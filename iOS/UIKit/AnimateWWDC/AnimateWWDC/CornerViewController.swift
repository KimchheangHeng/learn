//
//  CornerViewController.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/18.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class CornerViewController: UIViewController {

    @IBOutlet weak var round: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        round.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        round.layer.masksToBounds = true
        round.layer.cornerRadius = 0
    }
    
    @IBAction func start(_ sender: Any) {
        let animator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeInOut) {
            self.round.layer.cornerRadius = 40
            self.round.frame = self.round.frame.offsetBy(dx: 0, dy: 40)
        }
        animator.startAnimation()
    }
    
    @IBAction func restore(_ sender: Any) {
        let animator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeInOut) {
            self.round.layer.cornerRadius = 0
            self.round.frame = self.round.frame.offsetBy(dx: 0, dy: -40)
        }
        animator.startAnimation()

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
