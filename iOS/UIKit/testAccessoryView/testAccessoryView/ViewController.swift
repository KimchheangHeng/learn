//
//  ViewController.swift
//  testAccessoryView
//
//  Created by huahuahu on 2018/8/9.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let textView1 = UITextView.init()
        textView1.bounds = CGRect.init(x: 0, y: 0, width: 375, height: 300)
        textView1.keyboardDismissMode = .onDrag
        textView1.backgroundColor = UIColor.yellow
        textView1.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        textView.inputAccessoryView = textView1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

