//
//  ViewController.swift
//  TestPerform
//
//  Created by huahuahu on 2018/9/2.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let test = TestObj.init()
//        registerSchemeForCustomProtocol:
        let voidSelector = NSSelectorFromString("testdd:")
        let intd: String = "t1"
        let r1 = test.perform(voidSelector, with: intd)
//        func testdd(_ d: String) -> Void {
//            print(d)
//        }
//        

        let returnSelector = NSSelectorFromString("testReturn:")
        let d2: String = "t2"
        let r2 = test.perform(returnSelector, with: d2)
        
        let classSelector = NSSelectorFromString("testClassFunc:")
        let d3: String = "t3"
        let r3 = TestObj.perform(classSelector, with: d3)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

