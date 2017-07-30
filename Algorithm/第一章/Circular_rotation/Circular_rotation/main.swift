//
//  main.swift
//  Circular_rotation
//
//  Created by huahuahu on 2017/7/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import Darwin

if CommandLine.arguments.count < 3
{
    print("Usage Circular_rotation Str1 Str2")
    exit(1)
}

let str1 = CommandLine.arguments[1]
let str2 = CommandLine.arguments[2]

let isCircularRatation = (str1.lengthOfBytes(using: String.Encoding.utf8) == str2.lengthOfBytes(using: String.Encoding.utf8)) && (str1.appending(str1).contains(str2) )


if isCircularRatation
{
    print("\(str1) and \(str2) is Circular_rotation")
}
else
{
    print("\(str1) and \(str2) isn't Circular_rotation")
}

