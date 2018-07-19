//
//  AdditiveViewController.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/18.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class AdditiveViewController: UIViewController {

    @IBOutlet weak var round: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func start(_ sender: Any) {
        let animator = UIViewPropertyAnimator(duration: 5, curve: .easeInOut, animations: { for _ in 0..<20 {
            let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.round.transform = self.round.transform.concatenating(rotation) }
        })
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
