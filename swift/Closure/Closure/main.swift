//
//  main.swift
//  Closure
//
//  Created by huahuahu on 2017/8/6.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
//var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
reversedNames = names.sorted(by: { $0 > $1 } )
//reversedNames = names.sorted(by: >)

//Trailing Closures
reversedNames = names.sorted() { $0 > $1 }
reversedNames = names.sorted { $0 > $1 }

print(reversedNames)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]

//---------------------Capturing Values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20
incrementByTen()
// returns a value of 30


let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
// returns a value of 7
incrementByTen()
// returns a value of 40

//-----------------------Closures Are Reference Types---------
//闭包 `incrementBySeven` 虽然是常量，但是闭包中引用的变量仍然可以发生变化。这是因为闭包是引用类型 (reference types)。
//在上面的例子中，`incrementByTen` 引用的闭包是常量，而闭包的内容不是常量。
//如果把一个闭包赋值给两个变量，那么这两个变量会指向同一个闭包。

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// returns a value of 50
//

//-----------------------Escaping Closures
//当闭包作为函数的参数，但却在函数执行完毕之后才执行，称之为这个闭包 “escape a function”。在函数的定义中加上 `@escaping` 关键字。
//一个比较常见的例子是把闭包存储在函数之外的另一个变量中，如下：

var completionHandlers: [() -> Void] = []
//@escaping 不能少
func someFunctionWithEscapingClosure(completionHandler:@escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

//在闭包前声明 `@escaping`，说明在闭包中必须显式引用 `self` 变量。
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)
// Prints "100"

//-------------------Autoclosures---------
//当一个表达式作为参数传递给一个函数时，可能会自动创建一个闭包，闭包的内容就是这个表达式，这种闭包叫做自动闭包 (autoclosure)。
//这种句法上的方便性可以去掉用大括号把代码包裹起来的步骤。
//`assert(condition:message:file:line:) ` 函数的 `condition`参数和 `message` 参数就是自动闭包。
//自动闭包可以延迟计算，其中的代码在实际调用之前，是不会运行的。

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

//在上面的代码中，`customersInLine` 类型是 `() -> String`。
//可以声明一个函数，参数类型是 `() -> String`。

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) } )
// Prints "Now serving Alex!"

//`serve(customer:)` 这个函数调用时出现了显示的闭包。也可以声明函数时，指定是自动闭包 ` @autoclosure`。这样子在调用时，看起来参数是 `String`。入参被自动转化为闭包。

// customersInLine is ["Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
// Prints "Now serving Ewa!"

//自动闭包有时会使得函数难以理解。
//autoclosure 和escape closure 可以混用。

// customersInLine is ["Barry", "Daniella"]
var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
// Prints "Collected 2 closures."
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}
// Prints "Now serving Barry!"
// Prints "Now serving Daniella!"




