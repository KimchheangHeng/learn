#  自适应布局  
## Adaptive  
1. insetsContentViewsToSafeArea 来确定 tableviewcell 的 contentview 是否在 safeArea 之内
1. cellLayoutMarginsFollowReadableWidth 来自适应的确定文字的宽度。不同的屏幕、不同的字体
1. 隐藏导航栏 prefersStatusBarHidden 返回 false
1. 对于 iPhone X，沉浸式体验，需要把导航栏也隐藏掉

## bottom  
1. adjustedContentInset = contentInset + system inset
1. iphonx 距离顶部44，在safeArea 之内
2. 非 iphonex，距离顶部30  
3. 通过两个约束来达到这个效果。
    1. 一个是非必须的距离顶部的距离是30  
    1. 另一个是必选的在 safeArea 之内

## HugResist   
> Content Hugging Priority：直译成中文就是 “内容拥抱优先级”，从字面意思上来看就是两个视图，谁的 “内容拥抱优先级” 高，谁就优先环绕其内容。
> Content Compression Resistance Priority：该优先级直译成中文就是 “内容压缩阻力优先级”。也就是视图的 “内容压缩阻力优先级” 越大，那么该视图中的内容越难被压缩。而该优先级小的视图，则内容优先被压缩。


## 参考 
- [iOS 开发之 AutoLayout 中的 Content Hugging Priority 和 Content Compression Resistance Priority 解析](https://www.cnblogs.com/ludashi/p/7373051.html)
- [iOS Status Bar 的隐藏](http://jumpingfrog0.github.io/2016/2016-03-26-status-bar-hidden/)
- [UIKit: Apps for Every Size and Shape](https://developer.apple.com/videos/play/wwdc2018/235/)



