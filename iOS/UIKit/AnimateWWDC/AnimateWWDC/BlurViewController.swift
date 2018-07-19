//
//  BlurViewController.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/18.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class BlurViewController: UIViewController {

    enum State: Int {
        case blurred
        case notBlurred
    }
    var state = State.blurred
    @IBOutlet weak var blurview: UIVisualEffectView!
    @IBOutlet weak var blurBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        blurBtn.setTitle("blur", for: .normal)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func action(_ sender: Any) {
        switch state {
        case .notBlurred:
            let blurAnimator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeInOut) {
                self.blurview.effect = UIBlurEffect.init(style: .light)

            }
            blurAnimator.addCompletion { (position) in
                switch position {
                case .end:
                    self.state  = .blurred
                    self.blurBtn.setTitle("unblur", for: .normal)
                default:
                    print("dd")
                }
            }
            blurAnimator.startAnimation()
            
        case .blurred:
            let blurAnimator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeInOut) {
                self.blurview.effect = nil
            }
            blurAnimator.addCompletion { (position) in
                switch position {
                case .end:
                    self.state  = .notBlurred
                    self.blurBtn.setTitle("blur", for: .normal)
                default:
                    print("dd")
                }
            }

            blurAnimator.startAnimation()
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
