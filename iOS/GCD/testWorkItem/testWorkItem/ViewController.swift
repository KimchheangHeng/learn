//
//  ViewController.swift
//  testWorkItem
//
//  Created by huahuahu on 2018/8/1.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let item = DispatchWorkItem.init {
            print("dfdf")
        }
        item.perform()
//        item.cancel()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            if item.isCancelled {
                print("canceled")
            } else {
                item.perform()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

