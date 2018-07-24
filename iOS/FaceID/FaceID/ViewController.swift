//
//  ViewController.swift
//  FaceID
//
//  Created by huahuahu on 2018/7/24.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func didClick(_ sender: Any) {
        let myContext = LAContext.init()
        if myContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            myContext.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "测试") { (succ, error) in
                if succ {
                    DispatchQueue.main.async {
                        self.label.text = "success identy"
                    }
                } else if let err = error {
                    DispatchQueue.main.async {
                        self.label.text = "identy fail, reason is \(err)"
                    }
                }
            }
        }
    }
    
}

