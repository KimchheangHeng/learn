//: [Previous](@previous)
import Foundation
/*:

- [Time​Interval, Date, and Date​Interval](https://nshipster.com/timeinterval-date-dateinterval/)。
- [Swift4 中对于日期时间的处理](https://blog.csdn.net/shenjie_xsj/article/details/79033861)
 
 表示时间的基本类型是 Date。但是 Date 和日历又没有关系，它表示某一个时刻而已。
 尽管 Date 表示的某一个时刻，却是通过距离reference date 的 interval 确定的。
 */

//public struct Date : ReferenceConvertible, Comparable, Equatable {
//    public typealias ReferenceType = NSDate
//
//    fileprivate var _time: TimeInterval
//
//    // ...
//}


/*:
 `DateInterval` 在 iOS 10 被引入，表示两个时刻之间的时间段。
 */

let canlendar = Calendar.current
let date = Date.init()
print(date)
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let dateStr = dateFormatter.string(from: date)
let dateInterval = canlendar.dateInterval(of: .month, for: date)


//: [Next](@next)
