//
//  ViewController.swift
//  PushAnimationDemo
//
//  Created by huahuahu on 2018/12/28.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var customInputView = CustomInputAccessoryView.init(frame: UIScreen.main.bounds)
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-600)
        }
        textView.inputAccessoryView = customInputView
        customInputView.setup()
        customInputView.snp.makeConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.width).labeled("屏幕等宽")
            make.height.equalTo(UIScreen.main.bounds.height).priority(.high).labeled("屏幕等高")
        }
    }

    @IBAction func switchInputAccessory(_ sender: Any) {
        customInputView.switchView()
    }
    
}

