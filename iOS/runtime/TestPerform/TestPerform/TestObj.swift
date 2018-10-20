//
//  TestObj.swift
//  TestPerform
//
//  Created by huahuahu on 2018/9/2.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

@objcMembers
class TestObj: NSObject {
    func testdd(_ d: String) -> Void {
        print(d)
    }
    
    func testReturn(_ d: String) -> String {
        print("ddfd is \(d)")
        return d + "fdf f"
    }
    
    class func testClassFunc(_ sss: String) -> Bool {
        print("sssis \(sss)")
        print("fadsfasdf clas")
        return false
    }
}
