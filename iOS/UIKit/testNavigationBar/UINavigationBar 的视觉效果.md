# UINavigationBar 的视觉效果

有很多属性可以决定导航栏的视觉效果，下面做一下总结

##  `barStyle` 属性  
1. 白底黑字 `default`
2. 黑底白字  `black`

`blackOpaque` 和 `blackTranslucent` 已被 Deprecated。

这个属性的优先级是最低的，其他的任何属性会覆盖这个属性的效果。  
> Any changes you make to other navigation bar appearance properties override those inferred from the bar style.


##  `isTranslucent`  
是否是半透明的

## `barTintColor` 和 `tintColor`

 `barTintColor` 决定导航栏的背景色 
 `tintColor` 决定导航栏中文字的颜色

## background image 和 shadow images
优先级最高。 
 分别是 `setBackgroundImage(_:for:barMetrics:)` 方法和 `shadowImage`  属性

> To use the custom shadow image, you need to have specified a custom background image


## 总结  
### 关于背景颜色
查看一个导航栏的外观，流程应该是这样子的

1. 查看backgroundImage 属性是否为nil。如果非空，决定了背景颜色
2. 查看 barTintColor 属性是否为nil。如果非空，决定了背景颜色
3. 查看 barStyle 属性，决定了背景颜色


## 关于是否透明  
1. 如果没有设置背景图，根据 `isTranslucent` 属性来走
1. 如果设置了背景图 
    1. 背景图的 alpha 小于1，
        1. 没有手动设置，则默认 true
        2. 手动设置 `isTranslucent` 为false，那么系统为背景图提供一个不透明的背景。背景颜色由 `barStyle` 和 `barTintColor` 决定
    2. 背景图的 alpha 等于1，
        1. 没有手动设置，那么默认是 false
        2. 手动设置 `isTranslucent` 为 true，那么背景图的 alpha 值变为小于 1 的系统值。




## 参考
- [UINavigationBar](https://developer.apple.com/documentation/uikit/uinavigationbar)
