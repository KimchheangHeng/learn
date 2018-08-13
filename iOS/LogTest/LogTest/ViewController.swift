//
//  ViewController.swift
//  LogTest
//
//  Created by huahuahu on 2018/8/7.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {

    let customLog = OSLog.init(subsystem: "com.tiger.shenzhen", category: "webview")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str1 = "fasdfa"
        let dic = [1:2, 2:3]
        os_log(.debug, log: customLog, "dafds, %{public}@, %{private}@", str1, dic)
    }


}

