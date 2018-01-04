//
//  main.swift
//  ReverseInt
//
//  Created by huahuahu on 2018/1/3.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import Foundation




func reverse(inputInt:Int) -> Int {
    var inputNumber = inputInt
    var outNumber = 0;
    while inputNumber != 0 {
        let remind = inputNumber % 10
        inputNumber = inputNumber  / 10
        if (inputInt >= 0) && (outNumber > (Int.max - remind)/10){
            print("\(inputInt) too large, after reverse")
            return 0
        }
        else if (inputInt < 0) &&  outNumber < ((Int.min - remind)/10){
            print(" \(inputInt) too small, after reverse")
            return 0
        }
        else{
            outNumber = outNumber * 10 + remind
        }
    }
    
    return outNumber;
}

print(reverse(inputInt: -9223372036854705899));
