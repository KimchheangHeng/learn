# iOS 响应链  
App 使用 UIResponder 子类来接收和处理事件。 UIView, UIViewController,  UIApplication 都是 UIResponder 的子类。  
响应者接收到事件，必须响应事件或者传递给其他响应者。  
App 收到事件后，会自动选择最适当的响应者，叫做第一响应者。  
如果第一响应者不响应，事件会沿着响应链传递。系统会提供一个响应链，可以在代码中修改。  
![](http://oda58fqub.bkt.clouddn.com/15146937907621.jpg)  

##  决定第一响应者  
根据不同类型的事件，系统选择不同的响应者。  
比如 Touch 事件，会选择 touch 发生的 view。  
如果 view 有一个手势识别，那么手势识别会在 view 接收到之前接收事件。如果识别失败，那么事件会传递给 view。继续响应链的传递。  

## 决定 touch 事件发生在哪个响应者中  
`hitTest:withEvent:` 方法决定事件发生在哪个 View 中。 
 根据苹果的文档，hitTest 会返回当前view的包含touch事件的最远子view。  
 操作方式递归的，大致如下：
 
 - 首先调用当前视图的`pointInside:withEvent:`方法判断触摸点是否在当前视图内：
-  若`pointInside:withEvent:`方法返回NO，说明触摸点不在当前视图内，则当前视图的`hitTest:withEvent:`返回nil
- 若`pointInside:withEvent:`方法返回YES，说明触摸点在当前视图内，则遍历当前视图的所有子视图(subviews)，调用子视图的`hitTest:withEvent:`方法重复前面的步骤，子视图的遍历顺序是从top到bottom，即从subviews数组的末尾向前遍历，直到有子视图的`hitTest:withEvent:`方法返回非空对象或者全部子视图遍历完毕。  
    -  若第一次有子视图的`hitTest:withEvent:`方法返回非空对象,则当前视图的`hitTest:withEvent:`方法就返回此对象，处理结束
    
    - 若所有子视图的`hitTest:withEvent:`方法都返回nil，则当前视图的`hitTest:withEvent:`方法返回当前视图自身(self)

![-w295](http://oda58fqub.bkt.clouddn.com/15146986870652.jpg)

     UIWindow:hitTest:withEvent:
     UIWindow:pointInside:withEvent:
     UIView:hitTest:withEvent:
     UIView:pointInside:withEvent:
     DView:hitTest:withEvent:
     DView:pointInside:withEvent:
     BView:hitTest:withEvent:
     BView:pointInside:withEvent:
     CView:hitTest:withEvent:
     CView:pointInside:withEvent:

在上图中，点击 CView，大致响应如上。

## 利用 hitTest 使得响应区域外的事件  
只需在父View 中，复写 hitTest，使得其返回为当前view即可。
 
 
## 修改响应链  
修改 `nextResponder` 属性  
系统已经修改了一些UIKit 中类的这个属性。  

- UIView   
    如果view 是 VC 的 root view，那么 `nextResponder`  是VC；否则是父view
- UIViewController  
    - 如果是window的 root vc，那么 `nextResponder` 是 window
    - 如果是 presented VC，那么 `nextResponder` 是 presenting VC
- UIWindow    
    `nextResponder` 是 UIApplication 
- UIApplication  
    如果 app delegate 是  UIResponder 子类，那么 `nextResponder`  是 delegate。  


## 参考 
- [UIResponse之事件响应链及其事件传递](https://www.cnblogs.com/AbeDay/p/5026869.html)
- [iOS事件响应链中Hit-Test View的应用](https://www.jianshu.com/p/d8512dff2b3e)
- [开发中常见问题集锦](http://www.cnblogs.com/mjios/archive/2013/03/06/2945347.html)


