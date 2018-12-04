//
//  ViewController.swift
//  TestSelfInBlock
//
//  Created by huahuahu on 2018/12/2.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let test =  Test.init()
        (0...10).forEach { (_) in
            test.printSelf()
        }
    }
    

}

