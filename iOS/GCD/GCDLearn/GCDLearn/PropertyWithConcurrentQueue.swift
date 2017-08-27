//
//  PropertyWithConcurrentQueue.swift
//  GCDLearn
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit

class PropertyWithConcurrentQueue {
    private var somePrivateStr:String?
    
    let _syncQueue = DispatchQueue.init(label: "com.huahuahu.concurrentProperty", qos: DispatchQoS.default, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.inherit, target: nil)
    
    
    var someStr:String?
    {
        get
        {
            var str:String?
            _syncQueue.sync {
                str = somePrivateStr
            }
            return str
        }
        set
        {
//            _syncQueue.async {
//                self.somePrivateStr = newValue
//            }
            _syncQueue.async(flags: .barrier) {
            self.somePrivateStr = newValue
            }
        }
    }
    
}
