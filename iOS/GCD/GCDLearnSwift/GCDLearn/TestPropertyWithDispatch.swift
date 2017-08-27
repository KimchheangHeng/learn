//
//  TestPropertyWithDispatch.swift
//  GCDLearn
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

//使用GCD来实现同步机制
//所有加锁操作在GCD中处理，GCD是在相当深的底层实现的，因此可以做很多优化

import UIKit

class TestPropertyWithDispatch: NSObject {

	private var privateString:String?

		var someString:String?
		{
			get
			{
				var resultStr:String?
					_syncQueue.sync {
						resultStr = privateString
					}
				return resultStr
			}
			set
			{
//                _syncQueue.sync {
//                    privateString = newValue
//                }
                //改为异步线程，可能会提高执行速度。也可能不会
                //因为改为异步线程，需要把block中的内容进行一次拷贝
                _syncQueue.async {
                    self.privateString = newValue
                }
			}
		}

	let _syncQueue = DispatchQueue.init(label: "com.huahuahu.property")
    

}
