//
//  main.swift
//  SwiftOverAll
//
//  Created by tigerguo on 2017/8/1.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

import Foundation

//让系统推断类型
let implicitInteger = 70

//显式的定义类型
let explicitDouble: Double = 70

//类型转换需要显式转换
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
//let widthLabel = label + width


//把变量包裹在字符串中
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//创建数组和字典
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

// for-in 语句
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//if 里的条件必须是 Boolean 类型
//    if score { //'Int' is not convertible to 'Bool'


// optional 类型
let nickName: String? = nil
let fullName: String = "John Appleseed"

// ?? 符号来提供默认值
let informalGreeting = "Hi \(nickName ?? fullName)"

// switch 的值不局限于整数类型
// 不需要break语句
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

//Switch must be exhaustive
//Do you want to add a default clause?

// 指定范围，不包括上界
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// 指定范围，包括上界
total = 0
for i in 0...4 {
    total += i
}
print(total)

// "_" 表示没有 argument label，所以调用时不需要带上前缀
// "on" 是第二个参数的argument label，调用时需要加上前缀
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))

//返回元组
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//Nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//返回函数
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//函数作为参数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//闭包
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// 闭包简单写法 1 省略返回类型和参数类型
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// 闭包简单写法 2 再省略参数的名字
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

// 泛型
// where 语句指定对泛型的要求
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
}
anyCommonElements([1, 2, 3], [3])



