//
//  main.swift
//  ThreeSum
//
//  Created by huahuahu on 2017/8/24.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import Darwin


let intArray = readInts()

let length = intArray.count
var  count  = 0

let start = CFAbsoluteTimeGetCurrent()

for i in 0..<length
{
    for j in (i+1)..<length
    {
        for k in (j+1)..<length
        {
            if intArray[i] + intArray[j] + intArray[k] == 0
            {
                count = count + 1
            }
        }
    }
}

let end = CFAbsoluteTimeGetCurrent()

print("\(count) zeros from \(length) int, cost \(end - start)s")




