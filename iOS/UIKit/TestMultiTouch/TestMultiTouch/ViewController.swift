//
//  ViewController.swift
//  TestMultiTouch
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let touchview = TouchableView.init()
        touchview.frame = view.bounds
        view.addSubview(touchview)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

