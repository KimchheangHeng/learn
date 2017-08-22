//
//  Stack.swift
//  Stack
//
//  Created by huahuahu on 2017/7/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
public class Stack <T > {
    var array:[T]!
    
    public init() {
        array = [T]()
    }
    
   public func push(item:T) -> Void {
        array.append(item)
    }
    
    public func pop() -> T {
        return array.removeLast()
    }
    
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    public func size() -> Int {
        return array.count
    }
}

