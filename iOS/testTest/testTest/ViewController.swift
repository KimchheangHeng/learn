//
//  ViewController.swift
//  testTest
//
//  Created by huahuahu on 2018/6/16.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func upperCase(_ sender: Any) {
        lable.text = lable.text?.uppercased()
    }
    
}

