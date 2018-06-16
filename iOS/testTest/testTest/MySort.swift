//
//  MySort.swift
//  testTest
//
//  Created by huahuahu on 2018/6/16.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import Foundation

class NumberContain {
    var number = 0
    
}

@discardableResult
func sortArray(_ array: [String]) -> [String] {
    
    return array.sorted()
}

func asyncPlus(_ numberContain: NumberContain, delay: Int){
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() +  Double(delay)) {
        numberContain.number = numberContain.number + 1
    }
}
