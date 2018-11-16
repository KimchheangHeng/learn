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
 可以用来获取某一个日历单位的长短。如某个月有多长，一天有多长。
 - 获取某月的长度
 */

// 获取当前日历
let canlendar = Calendar.current
// 获取当前时间
let date = Date.init()
// 这个日历中，这个月有多长。
// 2018/11/10 11月有30天，所以这个月的interval 是 30* 24 * 3600 = 2592000
let dateInterval = canlendar.dateInterval(of: .month, for: date)
// 看2018年2月份有多长。 28 * 24 * 3600 = 2419200
let febDate = canlendar.date(from: DateComponents.init(year: 2018, month: 2, day:2))!
let febInterval = canlendar.dateInterval(of: .month, for: febDate)

/*:
 - 找到某一天有多长
 */

// 如何找到某一天有多少秒
let dstComponents = DateComponents.init(year: 2018, month:11, day:4)
// 86400 不用通过 24 * 60 * 60 啦
canlendar.dateInterval(of: .day, for: canlendar.date(from: dstComponents)!)?.duration

/*:
 计算两个时期的重叠区间
 */

// Simon Vouet
// 9 January 1590 – 30 June 1649
let vouet = DateInterval.init(start: canlendar.date(from: DateComponents(year: 1590, month: 1, day: 9))!, end: canlendar.date(from: DateComponents.init(year: 1649, month: 6, day: 30))!)

// Peter Paul Rubens
// 28 June 1577 – 30 May 1640
let rubens = DateInterval.init(start: canlendar.date(from: DateComponents(year: 1577, month: 6, day: 28))!, end: canlendar.date(from: DateComponents.init(year: 1640, month: 5, day: 30))!)

let overlap = rubens.intersection(with: vouet)!

//两个时代，有 50 年是重叠的
canlendar.dateComponents([.year], from: overlap.start, to: overlap.end)

let formatter = DateIntervalFormatter()
formatter.timeStyle = .none
formatter.dateTemplate = "%Y"
formatter.string(from: overlap)
// "1590 – 1640"



//: [Next](@next)
