# UIKit Gestures  
## 手势分为两类  

- discrete gesture recognizer  
    只调用 action method 方法一次
- continuous gesture recognizer  
    调用 action method 多次，告知当前的状态。

    > For example, a UIPanGestureRecognizer object calls your action method each time the touch position changes.

## 多个手势之间的冲突 
### Preferring One Gesture Over Another  
` gestureRecognizer:shouldRequireFailureOfGestureRecognizer:` 或`gestureRecognizer:shouldBeRequiredToFailByGestureRecognizer:`  
### 同时识别多个手势
`gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:` 这个方法

### 和控件已有的响应 
> Gesture recognizers handle touch events before the views to which they are attached 

即，先响应手势，再响应 Button 的点击事件。如果加了一个tap手势，就不会响应点击事件了。  

> If a view has an attached gesture recognizer, the gesture recognizer receives touch and press events before the view receives them. If all of the view’s gesture recognizers fail to recognize their gestures, the events are passed to the view for handling



