# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.01-keypress.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress_d


PostBuild.01-triangles.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles_d


PostBuild.03-drawcommands.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands_d


PostBuild.03-instancing.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing_d


PostBuild.03-instancing2.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2_d


PostBuild.03-instancing3.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3_d


PostBuild.03-pointsprites.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites_d


PostBuild.03-primitiverestart.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart_d


PostBuild.03-xfb.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb_d


PostBuild.04-gouraud.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud_d


PostBuild.04-gouraud-float.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float_d


PostBuild.04-shadowmap.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap_d


PostBuild.06-cubemap.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap_d


PostBuild.06-load-texture.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture_d


PostBuild.06-mipfilters.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters_d


PostBuild.06-multitexture.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture_d


PostBuild.06-statictexture.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture_d


PostBuild.06-texturewrapping.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping_d


PostBuild.06-volumetexturing.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing_d


PostBuild.08-lightmodels.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels_d


PostBuild.09-simpletess.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess_d


PostBuild.09-teapot.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot_d


PostBuild.10-draw-xfb.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb_d


PostBuild.10-fur.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur_d


PostBuild.10-viewport-array.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array_d


PostBuild.11-doublewrite.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite_d


PostBuild.11-oit.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit_d


PostBuild.11-overdrawcount.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount_d


PostBuild.12-imageprocessing.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing_d


PostBuild.12-particlesimulator.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator_d


PostBuild.12-raytracer.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer_d


PostBuild.12-simplecompute.Debug:
PostBuild.vermilion.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute_d
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute_d
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute_d:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute_d


PostBuild.vermilion.Debug:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a


PostBuild.glfw.Debug:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a


PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.01-keypress.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress


PostBuild.01-triangles.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles


PostBuild.03-drawcommands.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands


PostBuild.03-instancing.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing


PostBuild.03-instancing2.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2


PostBuild.03-instancing3.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3


PostBuild.03-pointsprites.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites


PostBuild.03-primitiverestart.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart


PostBuild.03-xfb.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb


PostBuild.04-gouraud.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud


PostBuild.04-gouraud-float.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float


PostBuild.04-shadowmap.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap


PostBuild.06-cubemap.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap


PostBuild.06-load-texture.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture


PostBuild.06-mipfilters.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters


PostBuild.06-multitexture.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture


PostBuild.06-statictexture.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture


PostBuild.06-texturewrapping.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping


PostBuild.06-volumetexturing.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing


PostBuild.08-lightmodels.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels


PostBuild.09-simpletess.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess


PostBuild.09-teapot.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot


PostBuild.10-draw-xfb.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb


PostBuild.10-fur.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur


PostBuild.10-viewport-array.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array


PostBuild.11-doublewrite.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite


PostBuild.11-oit.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit


PostBuild.11-overdrawcount.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount


PostBuild.12-imageprocessing.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing


PostBuild.12-particlesimulator.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator


PostBuild.12-raytracer.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer


PostBuild.12-simplecompute.Release:
PostBuild.vermilion.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute


PostBuild.vermilion.Release:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a


PostBuild.glfw.Release:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.01-keypress.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress


PostBuild.01-triangles.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles


PostBuild.03-drawcommands.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands


PostBuild.03-instancing.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing


PostBuild.03-instancing2.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2


PostBuild.03-instancing3.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3


PostBuild.03-pointsprites.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites


PostBuild.03-primitiverestart.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart


PostBuild.03-xfb.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb


PostBuild.04-gouraud.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud


PostBuild.04-gouraud-float.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float


PostBuild.04-shadowmap.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap


PostBuild.06-cubemap.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap


PostBuild.06-load-texture.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture


PostBuild.06-mipfilters.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters


PostBuild.06-multitexture.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture


PostBuild.06-statictexture.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture


PostBuild.06-texturewrapping.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping


PostBuild.06-volumetexturing.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing


PostBuild.08-lightmodels.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels


PostBuild.09-simpletess.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess


PostBuild.09-teapot.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot


PostBuild.10-draw-xfb.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb


PostBuild.10-fur.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur


PostBuild.10-viewport-array.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array


PostBuild.11-doublewrite.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite


PostBuild.11-oit.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit


PostBuild.11-overdrawcount.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount


PostBuild.12-imageprocessing.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing


PostBuild.12-particlesimulator.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator


PostBuild.12-raytracer.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer


PostBuild.12-simplecompute.MinSizeRel:
PostBuild.vermilion.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute


PostBuild.vermilion.MinSizeRel:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a


PostBuild.glfw.MinSizeRel:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.01-keypress.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-keypress


PostBuild.01-triangles.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/01-triangles


PostBuild.03-drawcommands.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-drawcommands


PostBuild.03-instancing.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing


PostBuild.03-instancing2.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing2


PostBuild.03-instancing3.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-instancing3


PostBuild.03-pointsprites.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-pointsprites


PostBuild.03-primitiverestart.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-primitiverestart


PostBuild.03-xfb.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/03-xfb


PostBuild.04-gouraud.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud


PostBuild.04-gouraud-float.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-gouraud-float


PostBuild.04-shadowmap.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/04-shadowmap


PostBuild.06-cubemap.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-cubemap


PostBuild.06-load-texture.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-load-texture


PostBuild.06-mipfilters.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-mipfilters


PostBuild.06-multitexture.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-multitexture


PostBuild.06-statictexture.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-statictexture


PostBuild.06-texturewrapping.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-texturewrapping


PostBuild.06-volumetexturing.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/06-volumetexturing


PostBuild.08-lightmodels.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/08-lightmodels


PostBuild.09-simpletess.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-simpletess


PostBuild.09-teapot.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/09-teapot


PostBuild.10-draw-xfb.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-draw-xfb


PostBuild.10-fur.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-fur


PostBuild.10-viewport-array.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/10-viewport-array


PostBuild.11-doublewrite.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-doublewrite


PostBuild.11-oit.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-oit


PostBuild.11-overdrawcount.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/11-overdrawcount


PostBuild.12-imageprocessing.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-imageprocessing


PostBuild.12-particlesimulator.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-particlesimulator


PostBuild.12-raytracer.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-raytracer


PostBuild.12-simplecompute.RelWithDebInfo:
PostBuild.vermilion.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/12-simplecompute


PostBuild.vermilion.RelWithDebInfo:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a


PostBuild.glfw.RelWithDebInfo:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion.a:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libvermilion_d.a:
