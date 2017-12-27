# 快速滑动时 `cellForRow` 的调用次数  
## 问题  
有一个 1000 个 cell 的 tableView，刚刚进入界面时，`contentOffset` 为 0。用手快速滑动 tableView，直至最下面一个 cell 显示在屏幕上。  
这个过程中，`cellForRow` 被调用了几次呢？  
## 手写 demo  
新建一个工程，只有一个 tableView，然后从上滚到下。在 `cellForRowAtIndexPath`方法中把 `row` 加到数组中，然后滚动停止后，把数组写到文件中。  

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseID];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.datas[indexPath.row]];
    NSLog(@"cell for %@",indexPath);
    [self.displayedCells addObject:@(indexPath.row)];

## 分析文件 

    import numpy as np
    import json
    import pandas as pd
    
    a = []
    
    with open('displayedCell.txt', 'r') as f:
            a = json.load(f)
    
    array = np.array(a)
    
    diff = array[1:] - array[:-1]
    
    s1 = pd.Series(array)
    s2 = pd.Series(diff)
    dataFrame = pd.DataFrame([s1, s2]).T
    print(dataFrame)
    
如上，使用 `numpy` 和 `pandas` 来分析。最终的结果如下：  
![-w200](http://oda58fqub.bkt.clouddn.com/15143727131033.jpg)  

从第一个 cell 到最后一个 cell，最后的 cell 的 indexPath 是 999，但是 `cellForRow` 只被调用了 718 次。有一些是有间隔的。  
## 猜想  
UITableview在滚动时，会定时重绘，根据重绘前后滚动的位置来决定绘制哪些cell。
比如时刻1，显示下标为 10-20的cell，那么会为这些cell调用 `cellForRow` 方法。  
时刻2，由于滚动太快，显示下标为 25-35的cell，那么为这些cell调用` cellForRow` 方法。中间的 21-24 就没有被调用。

## 参考  
- [TestTableViewScroll](https://github.com/huahuahu/learn/tree/master/iOS/UIKit/TestTableViewScroll)

  
    
    



