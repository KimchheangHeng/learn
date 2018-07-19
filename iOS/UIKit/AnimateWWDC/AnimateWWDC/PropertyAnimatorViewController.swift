//
//  PropertyAnimatorViewController.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/17.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class PropertyAnimatorViewController: UIViewController {

    @IBOutlet weak var round: UIView!
    var panAnimator: UIViewPropertyAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let size = round.bounds.size
        round.layer.cornerRadius = size.width/2
        round.layer.masksToBounds = true
        
        let panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(PropertyAnimatorViewController.panAction(recognizer:)))
        round.addGestureRecognizer(panGesture)
    }
    

    @IBAction func start(_ sender: Any) {
        
//        let animator = UIViewPropertyAnimator.init(duration: 2.5 / 5, curve: .easeInOut) {
//            self.round.frame = self.round.frame.offsetBy(dx: 200, dy: 0)
//        }
//
//        animator.startAnimation()
        
        // custom
        let timing = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.75, y: 0.1),
                                             controlPoint2: CGPoint(x: 0.9, y: 0.25))
        let animator = UIViewPropertyAnimator.init(duration: 0.5, timingParameters: timing)
        animator.addAnimations {
            self.round.frame = self.round.frame.offsetBy(dx: 200, dy: 0)
        }
        animator.startAnimation()

    }
    
    @objc func panAction(recognizer: UIPanGestureRecognizer) -> Void {
        switch recognizer.state {
        case .began:
            panAnimator = UIViewPropertyAnimator.init(duration: 1, curve: .easeOut, animations: {
                self.round.frame = self.round.frame.offsetBy(dx: 200, dy: 0)
            })
            // new in ios 11
            panAnimator.scrubsLinearly = false
//            Calling this method on an inactive animator moves its state to active and puts its animations in a paused state right away.
            panAnimator.pauseAnimation()
        case .changed:
            let translation = recognizer.translation(in: round)
            panAnimator.fractionComplete = translation.x / 200
        case .ended:
            panAnimator.continueAnimation(withTimingParameters: nil, durationFactor: 0)
        default:
            print("dd")
        }
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
