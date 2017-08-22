//
//  main.swift
//  Stack
//
//  Created by huahuahu on 2017/7/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import Darwin


var ops  = Stack<String>()
var vals = Stack<Double>()

assert(CommandLine.argc > 1, "输入一个运算式，用空格间隔数字和字符")
let input =  CommandLine.arguments[1]

print("arguments is \(CommandLine.arguments)")
let components = CommandLine.arguments[1].components(separatedBy: " ")

print("components is \(components)")

for component in components
{
    if component == "("
    {
        
    }
    else if component == "+"
    {
        ops.push(item: component)
    }
    else if component == "-"
    {
        ops.push(item: component)
    }
    else if component == "*"
    {
        ops.push(item: component)
    }
    else if component == "/"
    {
        ops.push(item: component)
    }
    else if component == ")"
    {
        let op = ops.pop()
        var v = vals.pop()
        if op == "+"
        {
            v = vals.pop() + v
        }
        else if op == "-"
        {
            v = vals.pop() - v
        }
        else if op == "*"
        {
            v = vals.pop() * v
        }
        else if op == "/"
        {
            v = vals.pop() / v
        }
        
        vals.push(item: v)
    }
    else
    {
        print("componet is \(component)")
        vals.push(item: Double(component)!)
    }
}

print("\(input) is \(vals.pop())")




