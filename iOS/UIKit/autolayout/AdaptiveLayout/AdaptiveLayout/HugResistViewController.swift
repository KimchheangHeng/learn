//
//  HugResistViewController.swift
//  AdaptiveLayout
//
//  Created by huahuahu on 2018/7/22.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

//\https://www.cnblogs.com/ludashi/p/7373051.html
//http://jumpingfrog0.github.io/2016/2016-03-26-status-bar-hidden/
import UIKit

class HugResistViewController: UIViewController {

    @IBOutlet var labels: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func topleft(_ sender: Any) {
        let step = sender as! UIStepper
        let label = labels.first { $0.tag == 0}
        label?.text = String.init(repeating: "s", count: Int(step.value))
        print("stepvalue is \(step.value)")

    }
    

    @IBAction func topRight(_ sender: Any) {
        let step = sender as! UIStepper
        let label = labels.first { $0.tag == 1}
        label?.text = String.init(repeating: "s", count: Int(step.value))
        print("stepvalue is \(step.value)")

    }
    
    @IBAction func buttomLeftStep(_ sender: Any) {
        let step = sender as! UIStepper
        let label = labels.first { $0.tag == 2}
        label?.text = String.init(repeating: "s", count: Int(step.value))
        print("stepvalue is \(step.value)")
    }

    @IBAction func bottomRight(_ sender: Any) {
        let step = sender as! UIStepper
        let label = labels.first { $0.tag == 3}
        label?.text = String.init(repeating: "s", count: Int(step.value))
        print("stepvalue is \(step.value)")

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
