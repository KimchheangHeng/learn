//
//  Old.swift
//  AnimateWWDC
//
//  Created by huahuahu on 2018/7/17.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class Old: UIViewController {

    @IBOutlet weak var round: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let size = round.bounds.size
        round.layer.cornerRadius = size.width/2
        round.layer.masksToBounds = true
    }
    

    @IBAction func begin(_ sender: Any) {
        UIView.animate(withDuration: 0.25, animations: {
            self.round.frame = self.round.frame.offsetBy(dx: 100, dy: 0)
        }) { (succ) in
            if succ {
//                self.round.frame = self.round.frame.offsetBy(dx: -100, dy: 0)
            }
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
