//
//  readInt.swift
//  ThreeSum
//
//  Created by huahuahu on 2017/8/24.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import Darwin

func readInts() -> [Int] {
    var intArray = [Int]()
    
    while let str = readLine() {
        intArray.append(Int(str.trimmingCharacters(in: CharacterSet.whitespaces))!)
    }
    return intArray
}


