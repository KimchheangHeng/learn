//
//  AnimationViewController.swift
//  LayoutDrivenUI
//
//  Created by huahuahu on 2018/7/13.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var solidColor: UIView!
    let colors = [UIColor.red, UIColor.black, UIColor.yellow, UIColor.brown]
    var color = UIColor.clear {
        didSet {
            view.setNeedsLayout()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        solidColor.backgroundColor = colors.randomElement()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: Any) {
        
        //这句话 setNeedLayout
        color = colors.randomElement()!
        // 这句话，做动画
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: [.beginFromCurrentState], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
        solidColor.backgroundColor = color
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
