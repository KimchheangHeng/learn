/**
 * Copyright (c) 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#pragma once

#include "YGMacros.h"

YG_EXTERN_C_BEGIN

#define YGAlignCount 8
typedef YG_ENUM_BEGIN(YGAlign) {
  YGAlignAuto,//Computes to the parent's align-items value
  YGAlignFlexStart,//左对齐
  YGAlignCenter,//居中
  YGAlignFlexEnd,//➡️对齐
//If the combined size of the items along the cross axis is less than the size of the alignment container, any auto-sized items have their size increased equally (not proportionally), while still respecting the constraints imposed by max-height/max-width (or equivalent functionality), so that the combined size exactly fills the alignment container along the cross axis.
  YGAlignStretch,
  YGAlignBaseline,//项目的第一行文字的基线对齐。
  YGAlignSpaceBetween,//两端对齐，平均分布。两端元素紧贴容器边缘
    
  YGAlignSpaceAround,//平均分布，但是The empty space before the first and after the last item equals half of the space between each pair of adjacent items.
} YG_ENUM_END(YGAlign);
WIN_EXPORT const char *YGAlignToString(const YGAlign value);

#define YGDimensionCount 2
typedef YG_ENUM_BEGIN(YGDimension) {
  YGDimensionWidth,
  YGDimensionHeight,
} YG_ENUM_END(YGDimension);
WIN_EXPORT const char *YGDimensionToString(const YGDimension value);

#define YGDirectionCount 3
typedef YG_ENUM_BEGIN(YGDirection) {
  YGDirectionInherit,
  YGDirectionLTR,
  YGDirectionRTL,
} YG_ENUM_END(YGDirection);
WIN_EXPORT const char *YGDirectionToString(const YGDirection value);

#define YGDisplayCount 2
typedef YG_ENUM_BEGIN(YGDisplay) {
  YGDisplayFlex,
  YGDisplayNone,
} YG_ENUM_END(YGDisplay);
WIN_EXPORT const char *YGDisplayToString(const YGDisplay value);

#define YGEdgeCount 9
typedef YG_ENUM_BEGIN(YGEdge) {
  YGEdgeLeft,
  YGEdgeTop,
  YGEdgeRight,
  YGEdgeBottom,
  YGEdgeStart,
  YGEdgeEnd,
  YGEdgeHorizontal,
  YGEdgeVertical,
  YGEdgeAll,
} YG_ENUM_END(YGEdge);
WIN_EXPORT const char *YGEdgeToString(const YGEdge value);

#define YGExperimentalFeatureCount 1
typedef YG_ENUM_BEGIN(YGExperimentalFeature) {
  YGExperimentalFeatureWebFlexBasis,
} YG_ENUM_END(YGExperimentalFeature);
WIN_EXPORT const char *YGExperimentalFeatureToString(const YGExperimentalFeature value);

#define YGFlexDirectionCount 4
typedef YG_ENUM_BEGIN(YGFlexDirection) {//https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction
  YGFlexDirectionColumn, // 主轴是行，沿行顺序排列（从左到右）
  YGFlexDirectionColumnReverse,// 主轴是行，沿行倒序排列（从右到左）
  YGFlexDirectionRow,//主轴是列，沿列顺序排列（从上到下）
  YGFlexDirectionRowReverse,//主轴h是列，沿列倒序排列（从下到上）
} YG_ENUM_END(YGFlexDirection);
WIN_EXPORT const char *YGFlexDirectionToString(const YGFlexDirection value);

#define YGJustifyCount 5
typedef YG_ENUM_BEGIN(YGJustify) {//https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction
  YGJustifyFlexStart,//左对齐
  YGJustifyCenter,//居中
  YGJustifyFlexEnd,//右对齐
  YGJustifySpaceBetween,//两端对齐，项目之间的间隔都相等。//The first item is flush with the start,the last is flush with the end
  YGJustifySpaceAround,//每个项目两侧的间隔相等。所以，项目之间的间隔比项目与边框的间隔大一倍。Items have a half-size space on either end
} YG_ENUM_END(YGJustify);
WIN_EXPORT const char *YGJustifyToString(const YGJustify value);

#define YGLogLevelCount 6
typedef YG_ENUM_BEGIN(YGLogLevel) {
  YGLogLevelError,
  YGLogLevelWarn,
  YGLogLevelInfo,
  YGLogLevelDebug,
  YGLogLevelVerbose,
  YGLogLevelFatal,
} YG_ENUM_END(YGLogLevel);
WIN_EXPORT const char *YGLogLevelToString(const YGLogLevel value);

#define YGMeasureModeCount 3
typedef YG_ENUM_BEGIN(YGMeasureMode) {
  YGMeasureModeUndefined,
  YGMeasureModeExactly,
  YGMeasureModeAtMost,
} YG_ENUM_END(YGMeasureMode);
WIN_EXPORT const char *YGMeasureModeToString(const YGMeasureMode value);

#define YGNodeTypeCount 2
typedef YG_ENUM_BEGIN(YGNodeType) {
  YGNodeTypeDefault,
  YGNodeTypeText,
} YG_ENUM_END(YGNodeType);
WIN_EXPORT const char *YGNodeTypeToString(const YGNodeType value);

#define YGOverflowCount 3
typedef YG_ENUM_BEGIN(YGOverflow) {
  YGOverflowVisible,
  YGOverflowHidden,
  YGOverflowScroll,
} YG_ENUM_END(YGOverflow);
WIN_EXPORT const char *YGOverflowToString(const YGOverflow value);

#define YGPositionTypeCount 2
typedef YG_ENUM_BEGIN(YGPositionType) {
  YGPositionTypeRelative,
  YGPositionTypeAbsolute,
} YG_ENUM_END(YGPositionType);
WIN_EXPORT const char *YGPositionTypeToString(const YGPositionType value);

#define YGPrintOptionsCount 3
typedef YG_ENUM_BEGIN(YGPrintOptions) {
  YGPrintOptionsLayout = 1,
  YGPrintOptionsStyle = 2,
  YGPrintOptionsChildren = 4,
} YG_ENUM_END(YGPrintOptions);
WIN_EXPORT const char *YGPrintOptionsToString(const YGPrintOptions value);

#define YGUnitCount 4
typedef YG_ENUM_BEGIN(YGUnit) {
  YGUnitUndefined,
  YGUnitPoint,
  YGUnitPercent,
  YGUnitAuto,
} YG_ENUM_END(YGUnit);
WIN_EXPORT const char *YGUnitToString(const YGUnit value);

#define YGWrapCount 3
typedef YG_ENUM_BEGIN(YGWrap) {
  YGWrapNoWrap,//The flex items are laid out in a single line which may cause the flex container to overflow
  YGWrapWrap,//The flex items break into multiple lines
  YGWrapWrapReverse,//Behaves the same as wrap but cross-start and cross-end are permuted
} YG_ENUM_END(YGWrap);
WIN_EXPORT const char *YGWrapToString(const YGWrap value);

YG_EXTERN_C_END
