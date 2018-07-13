//
//  LayoutViewController.swift
//  LayoutDrivenUI
//
//  Created by huahuahu on 2018/7/13.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {

    var feelingCool = true {
        didSet {
            // dirty layout
            view.setNeedsLayout()
        }
    }
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // update UI
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
        label.text = feelingCool ? "cool" : "not cool"
    }
    

    @IBAction func didClick(_ sender: Any) {
        feelingCool.toggle()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
