/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Metal shaders used for this sample
*/

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

// Include header shared between this Metal shader code and C code executing Metal API commands
#import "AAPLShaderTypes.h"

constant bool has_base_color_map        [[ function_constant(kFunctionConstantBaseColorMapIndex) ]];
constant bool has_normal_map            [[ function_constant(kFunctionConstantNormalMapIndex) ]];
constant bool has_metallic_map          [[ function_constant(kFunctionConstantMetallicMapIndex) ]];
constant bool has_roughness_map         [[ function_constant(kFunctionConstantRoughnessMapIndex) ]];
constant bool has_ambient_occlusion_map [[ function_constant(kFunctionConstantAmbientOcclusionMapIndex) ]];
constant bool has_irradiance_map        [[ function_constant(kFunctionConstantIrradianceMapIndex) ]];
constant bool has_any_map = (has_base_color_map        ||
                             has_normal_map            ||
                             has_metallic_map          ||
                             has_roughness_map         ||
                             has_ambient_occlusion_map ||
                             has_irradiance_map);

constant float PI = 3.1415926535897932384626433832795;

// Per-vertex inputs fed by vertex buffer laid out with MTLVertexDescriptor in Metal API
typedef struct
{
    float3 position  [[ attribute(kVertexAttributePosition) ]];
    float2 texCoord  [[ attribute(kVertexAttributeTexcoord) ]];
    float3 normal    [[ attribute(kVertexAttributeNormal) ]];
    float3 tangent   [[ attribute(kVertexAttributeTangent) ]];
    float3 bitangent [[ attribute(kVertexAttributeBitangent) ]];
} Vertex;

// Vertex shader outputs and per-fragmeht inputs.  Includes clip-space position and vertex outputs
//   interpolated by rasterizer and fed to each fragment genterated by clip-space primitives.
typedef struct
{
    float4 position [[ position ]];
    float2 texCoord [[ function_constant(has_any_map) ]];
    
    float3  worldPos;
    float3  tangent;
    float3  bitangent;
    float3  normal;
} ColorInOut;

typedef struct LightingParameters
{
    float3  lightDir;
    float3  viewDir;
    float3  halfVector;
    float3  reflectedVector;
    float3  normal;
    float3  reflectedColor;
    float3  irradiatedColor;
    float4  baseColor;
    float   nDoth;
    float   nDotv;
    float   nDotl;
    float   hDotl;
    float   metalness;
    float   roughness;
    float   ambientOcclusion;
} LightingParameters;

constexpr sampler linearSampler (mip_filter::linear,
                                 mag_filter::linear,
                                 min_filter::linear);

constexpr sampler nearestSampler(min_filter::linear, mag_filter::linear, mip_filter::none);

constexpr sampler mipSampler(address::clamp_to_edge, min_filter::linear, mag_filter::linear, mip_filter::linear);

LightingParameters calculateParameters(ColorInOut in,
                                       constant AAPLUniforms         & uniforms,
                                       constant AAPLMaterialUniforms & materialUniforms,
                                       texture2d<float>   baseColorMap        [[ function_constant(has_base_color_map) ]],
                                       texture2d<float>   normalMap           [[ function_constant(has_normal_map) ]],
                                       texture2d<float>   metallicMap         [[ function_constant(has_metallic_map) ]],
                                       texture2d<float>   roughnessMap        [[ function_constant(has_roughness_map) ]],
                                       texture2d<float>   ambientOcclusionMap [[ function_constant(has_ambient_occlusion_map) ]],
                                       texturecube<float> irradianceMap       [[ function_constant(has_irradiance_map) ]]);
inline float Fresnel(float dotProduct);
inline float sqr(float a);
float3 computeSpecular(LightingParameters parameters);
float Geometry(float Ndotv, float alphaG);
float3 computeNormalMap(ColorInOut in, texture2d<float> normalMapTexture);
float3 computeDiffuse(LightingParameters parameters);
float Distribution(float NdotH, float roughness);

inline float Fresnel(float dotProduct) {
    return pow(clamp(1.0 - dotProduct, 0.0, 1.0), 5.0);
}

inline float sqr(float a) {
    return a * a;
}

float Geometry(float Ndotv, float alphaG) {
    float a = alphaG * alphaG;
    float b = Ndotv * Ndotv;
    return (float)(1.0 / (Ndotv + sqrt(a + b - a*b)));
}

float3 computeNormalMap(ColorInOut in, texture2d<float> normalMapTexture) {
    float4 normalMap = float4(normalize(float4(normalMapTexture.sample(nearestSampler, float2(in.texCoord)).rgb * 2.0 - 1.0, 0.0)));
    return float3(normalize(in.normal * normalMap.z + in.tangent * normalMap.x - in.bitangent * normalMap.y));
}

float3 computeDiffuse(LightingParameters parameters)
{
    float3 diffuseRawValue = float3(((1.0/PI) * parameters.baseColor) * (1.0 - parameters.metalness));
    return diffuseRawValue * parameters.nDotl * parameters.ambientOcclusion;
}

float Distribution(float NdotH, float roughness) {
    if (roughness >= 1.0)
        return 1.0 / PI;
    
    float roughnessSqr = roughness * roughness;
    
    float d = (NdotH * roughnessSqr - NdotH) * NdotH + 1;
    return roughnessSqr / (PI * d * d);
}

float3 computeSpecular(LightingParameters parameters)
{
    float specularRoughness = parameters.roughness * (1.0 - parameters.metalness) + parameters.metalness;
    
    float Ds = Distribution(parameters.nDoth, specularRoughness);
    
    float3 Cspec0 = float3(1.0f);
    float3 Fs = float3(mix(float3(Cspec0), float3(1), Fresnel(parameters.hDotl)));
    float alphaG = sqr(specularRoughness * 0.5 + 0.5);
    float Gs = Geometry(parameters.nDotl, alphaG) * Geometry(parameters.nDotv, alphaG);
    
    float3 specularOutput = (Ds * Gs * Fs * parameters.irradiatedColor) * (1.0 + parameters.metalness * float3(parameters.baseColor))
    + float3(parameters.metalness) * parameters.irradiatedColor * float3(parameters.baseColor);
    
    return specularOutput * parameters.ambientOcclusion;
}

LightingParameters calculateParameters(ColorInOut in,
                                       constant AAPLUniforms         & uniforms,
                                       constant AAPLMaterialUniforms & materialUniforms,
                                       texture2d<float>   baseColorMap        [[ function_constant(has_base_color_map) ]],
                                       texture2d<float>   normalMap           [[ function_constant(has_normal_map) ]],
                                       texture2d<float>   metallicMap         [[ function_constant(has_metallic_map) ]],
                                       texture2d<float>   roughnessMap        [[ function_constant(has_roughness_map) ]],
                                       texture2d<float>   ambientOcclusionMap [[ function_constant(has_ambient_occlusion_map) ]],
                                       texturecube<float> irradianceMap       [[ function_constant(has_irradiance_map) ]])
{
    LightingParameters parameters;

    if(has_base_color_map)
    {
        float mapWeight = materialUniforms.mapWeights[kTextureIndexBaseColor];
        parameters.baseColor = baseColorMap.sample(linearSampler, in.texCoord.xy);
        parameters.baseColor *= mapWeight;
        float4 uniformContribution = (1.f - mapWeight) * float4(materialUniforms.baseColor, 1.0f);
        parameters.baseColor += uniformContribution;
    }
    else
    {
        parameters.baseColor = float4(materialUniforms.baseColor, 1.0f);
    }

    if(has_normal_map)
    {
        float mapWeight = materialUniforms.mapWeights[kTextureIndexNormal];
        parameters.normal = computeNormalMap(in, normalMap);
        parameters.normal *= mapWeight;
        float3 perVertexContribution =  (1.f - mapWeight) * float3(in.normal);
        parameters.normal += perVertexContribution;
    }
    else
    {
        parameters.normal = float3(in.normal);
    }

    parameters.viewDir = normalize(uniforms.cameraPos - float3(in.worldPos));

    if(has_roughness_map)
    {
        float mapWeight = materialUniforms.mapWeights[kTextureIndexRoughness];
        parameters.roughness = max(roughnessMap.sample  (linearSampler, in.texCoord.xy).x, 0.001f);
        parameters.roughness *= mapWeight;
        float uniformContribution =  (1.f - mapWeight) * materialUniforms.roughness.x;
        parameters.roughness += uniformContribution;
    }
    else
    {
        parameters.roughness = materialUniforms.roughness.x;
    }

    if(has_metallic_map)
    {
        float mapWeight = materialUniforms.mapWeights[kTextureIndexMetallic];
        parameters.metalness = metallicMap.sample  (linearSampler, in.texCoord.xy).x;
        parameters.metalness *= mapWeight;
        float uniformContribution = (1.f - mapWeight) * materialUniforms.metalness.x;
        parameters.metalness += uniformContribution;
    }
    else
    {
        parameters.metalness =  materialUniforms.metalness.x;
    }

    if(has_ambient_occlusion_map)
    {
        float mapWeight = materialUniforms.mapWeights[kTextureIndexAmbientOcclusion];
        parameters.ambientOcclusion = ambientOcclusionMap.sample  (linearSampler, in.texCoord.xy).x;
        parameters.ambientOcclusion *= mapWeight;
        float uniformContribution = (1.f - mapWeight) * materialUniforms.ambientOcclusion;
        parameters.ambientOcclusion += uniformContribution;
    }
    else
    {
        parameters.ambientOcclusion = materialUniforms.ambientOcclusion;
    }

    if(has_irradiance_map)
    {
        parameters.reflectedVector = reflect(-parameters.viewDir, parameters.normal);

        float mapWeight = uniforms.irradianceMapWeight;
        uint8_t mipLevel = parameters.roughness * irradianceMap.get_num_mip_levels();
        parameters.irradiatedColor = irradianceMap.sample(mipSampler, parameters.reflectedVector, level(mipLevel)).xyz;
        parameters.irradiatedColor *= mapWeight;
        float3 uniformContribution =  (1.f - mapWeight) * materialUniforms.irradiatedColor;
        parameters.irradiatedColor += uniformContribution;
    }
    else
    {
        parameters.irradiatedColor = materialUniforms.irradiatedColor;
    }


    parameters.lightDir = uniforms.directionalLightInvDirection;
    parameters.nDotl = max(0.001f,saturate(dot(parameters.normal, parameters.lightDir)));
    
    parameters.halfVector = normalize(parameters.lightDir + parameters.viewDir);
    parameters.nDoth = max(0.001f,saturate(dot(parameters.normal, parameters.halfVector)));
    parameters.nDotv = max(0.001f,saturate(dot(parameters.normal, parameters.viewDir)));
    parameters.hDotl = max(0.001f,saturate(dot(parameters.lightDir, parameters.halfVector)));

    return parameters;
}

fragment float4
fragmentLighting(ColorInOut in [[stage_in]],
                 constant AAPLUniforms         & uniforms         [[ buffer(kBufferIndexUniforms) ]],
                 constant AAPLMaterialUniforms & materialUniforms [[ buffer(kBufferIndexMaterialUniforms) ]],
                 texture2d<float>   baseColorMap         [[ texture(kTextureIndexBaseColor),        function_constant(has_base_color_map) ]],
                 texture2d<float>   normalMap            [[ texture(kTextureIndexNormal),           function_constant(has_normal_map) ]],
                 texture2d<float>   metallicMap          [[ texture(kTextureIndexMetallic),         function_constant(has_metallic_map) ]],
                 texture2d<float>   roughnessMap         [[ texture(kTextureIndexRoughness),        function_constant(has_roughness_map) ]],
                 texture2d<float>   ambientOcclusionMap  [[ texture(kTextureIndexAmbientOcclusion), function_constant(has_ambient_occlusion_map) ]],
                 texturecube<float> irradianceMap        [[ texture(kTextureIndexIrradianceMap),    function_constant(has_irradiance_map)]])
{
    float4 final_color = float4(0);

    LightingParameters parameters = calculateParameters(in,
                                                        uniforms,
                                                        materialUniforms,
                                                        baseColorMap,
                                                        normalMap,
                                                        metallicMap,
                                                        roughnessMap,
                                                        ambientOcclusionMap,
                                                        irradianceMap);

    final_color = float4(computeSpecular(parameters) + computeDiffuse(parameters), 1.0f);
    
    return final_color;
    
}

vertex ColorInOut vertexTransform(Vertex in [[stage_in]],
                                  constant AAPLUniforms & uniforms [[ buffer(kBufferIndexUniforms) ]])
{
    ColorInOut out;

    // Make in.position a float4 to perform 4x4 matrix math on it.
    // Then calculate the position of our vertex in clip space and output for clipping and rasterization
    out.position = uniforms.modelViewProjectionMatrix * float4(in.position, 1.0);

    // Pass along the texture coordinate of our vertex such which we'll use to sample from texture's
    //   in our fragment function, if we need it
    if (has_any_map)
    {
        out.texCoord = in.texCoord;
    }

    // Rotate our tangents, bitangents, and normals by the normal matrix
    float3x3 normalMatrix = float3x3(uniforms.normalMatrix);
    out.tangent   = normalMatrix * in.tangent;
    out.bitangent = normalMatrix * in.bitangent;
    out.normal    = normalMatrix * in.normal;
    out.worldPos = (float3) (uniforms.modelMatrix * float4(in.position, 1.0)).xyz;
    
    return out;
}
