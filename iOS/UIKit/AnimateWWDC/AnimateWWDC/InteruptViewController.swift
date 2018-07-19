//
//  InteruptViewController.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/17.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class InteruptViewController: UIViewController {

    let duration: TimeInterval = 5
    var progressWhenInterrupted: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let size = round.bounds.size
        round.layer.cornerRadius = size.width/2
        round.layer.masksToBounds = true
        
        let panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(PropertyAnimatorViewController.panAction(recognizer:)))
        round.addGestureRecognizer(panGesture)

    }
    var animator: UIViewPropertyAnimator?
    
    func animateIfNeeded(duartion: TimeInterval) {
        if nil == self.animator {
            self.animator = UIViewPropertyAnimator.init(duration: duartion, curve: .easeIn) {
                self.round.frame = self.round.frame.offsetBy(dx: 300, dy: 0)
            }
            self.animator?.startAnimation()
        }
    }

    @IBOutlet weak var round: UIView!
    
    @IBAction func start(_ sender: Any) {
        animateIfNeeded(duartion: duration)
    }
    
    @objc func panAction(recognizer: UIPanGestureRecognizer) -> Void {
        switch recognizer.state {
        case .began:
            animateIfNeeded(duartion: duration)
            animator!.pauseAnimation()
            progressWhenInterrupted = animator!.fractionComplete
        case .changed:
            
            let translation = recognizer.translation(in: round)
            animator!.fractionComplete = translation.x / 300 + progressWhenInterrupted
        case .ended:
            let timing = UICubicTimingParameters.init(animationCurve: .easeOut)
            animator!.continueAnimation(withTimingParameters: timing, durationFactor: 0)
        default:
            print("dd")
        }
    }

}
