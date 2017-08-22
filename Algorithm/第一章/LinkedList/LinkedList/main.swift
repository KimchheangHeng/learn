//
//  main.swift
//  LinkedList
//
//  Created by huahuahu on 2017/8/22.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import Darwin

let input = readLine()

let stack = LinkedListStack<String>()


for str in input!.components(separatedBy:" ")
{
    if str != "-"
    {
        stack.push(item:str)
    }
    else if stack.size != 0
    {
        print("\(stack.pop() ?? "") ", separator:"", terminator:"")
    }
}


print("(\(stack.size) left on stack)")



