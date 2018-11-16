//: [Previous](@previous)
/*:
 - [Swift 的 NSDate 初学者指南](http://www.swift.gg/2015/12/14/a-beginners-guide-to-nsdate-in-swift/)
 DateFormatter， 用来把 Date 对象转化为字符串
*/
import Foundation

let date = Date.init()
print(date)
//2018-11-10 10:33:01 +0000 0时区的时间。和东八区差了8小时

let dateFormatter = DateFormatter.init()
var convertedDate = dateFormatter.string(from: date)
// 输出是字符串，因为没有指定格式

//设置一下时间格式
dateFormatter.locale = Locale.init(identifier: "zh")
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
convertedDate = dateFormatter.string(from: date)
// 字符串变成了基于东8区，也就是当前系统的时区

//: 根据文档，最好使用 dateStyle 和 timeStyle来向用户展示
dateFormatter.dateStyle = .short
let allStyle: [DateFormatter.Style] = [.none, .short, .medium, .long, .full]
allStyle.forEach { style in
    dateFormatter.timeStyle = style
    dateFormatter.dateStyle = style
    print("style: \(style): \(dateFormatter.string(from: date))")
}
dateFormatter.timeStyle = .short
dateFormatter.string(from: date)
//: 重新设置 dateFormat 之后，会按照dateFormat 来设置
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
dateFormatter.string(from: date)

//: 再设置 timeStyle 之后，又回按照这两个属性来设置
dateFormatter.timeStyle = .short
dateFormatter.string(from: date)


//: [Next](@next)
