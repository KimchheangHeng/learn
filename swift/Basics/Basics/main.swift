//
//  main.swift
//  Basics
//
//  Created by huahuahu on 2017/8/2.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation

//声明变量
var welcomeMessage: String

//一行中声明多个变量
var red, green, blue: Double

// 变量名字可以是 Unicode 字符串
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

// 关键字用 ` 包起来可以
let `let` = "let"
//let let = "let"

/* This is the start of the first multiline comment.
 /* This is the second, nested multiline comment. */
 This is the end of the first multiline comment. */

//semicolons are required if you want to write multiple separate statements on a single line:
let cat = "🐱"; print(cat)

//On a 32-bit platform, Int is the same size as Int32.
//On a 64-bit platform, Int is the same size as Int64.
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

//Int is preferred than Uint

//Double represents a 64-bit floating-point number.
//Float represents a 32-bit floating-point number.
//
//Double is preferred


let pi = 3.14159
// pi is inferred to be of type Double, 而不是 float

//可以用下划线来提高可读性
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//let cannotBeNegative: UInt8 = -1
// UInt8 cannot store negative numbers, and so this will report an error


typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0


//let i = 1
//if i {
//    // this example will not compile, and will report an error
//}

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

//避免命名烦恼
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

//下标数字访问元组
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

// 类似字典
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"


//An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
//Swift’s optionals let you indicate the absence of a value for any type at all, without the need for special constants

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

//把Optional的变量设置nil，可以把它置为没有值的状态
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
//Nil cannot be assigned to type 'Int'

var surveyAnswer: String?
// surveyAnswer is automatically set to nil

//Forced Unwrapping
//I know that this optional definitely has a value; please use it.
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

//Optional Binding
//如果要改变值，可以用var代替 let
//if let actualNumber = Int(possibleNumber) {
if var actualNumber = Int(possibleNumber) {
    actualNumber = actualNumber * 2
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
        
//    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
//    actualNumber = actualNumber + 2//Use of unresolved identifier 'actualNumber'
    print("\"\(possibleNumber)\" could not be converted to an integer")
}


// 多个变量的 Optional Binding，下面两个相同
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"


//------------------------
//Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string."
//去掉 ! 会报错：Value of optional type 'String?' not unwrapped; did you mean to use '!' or '?'?
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

//    - 可以 optional binding

if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."
//---------------------------------------

//Error Handling

// 抛出异常函数
func canThrowAnError() throws {
    // this function may or may not throw an error
}

// 捕获异常的语句
//func makeASandwich() throws {
//    // ...
//}
//
//do {
//    try makeASandwich()
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    washDishes()
//} catch SandwichError.missingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}

//-------------------------------
//Assert

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.

// 不需要字符串
assert(age >= 0)

//assertionFailure
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

//--------------------------------
//precondition
//precondition(index > 0, "Index must be greater than zero.")



