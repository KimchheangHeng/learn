//
//  Stack.swift
//  Stack
//
//  Created by huahuahu on 2017/7/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
class stack <T > {
    var array:[T]!
    
    init() {
        array = [T]()
    }
    
    func push(item:T) -> Void {
        array.append(item)
    }
    
    func pop() -> T {
        return array.removeLast()
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func size() -> Int {
        return array.count
    }
}
