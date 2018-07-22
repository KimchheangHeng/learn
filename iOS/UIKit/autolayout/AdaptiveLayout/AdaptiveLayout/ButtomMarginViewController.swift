//
//  ButtomMarginViewController.swift
//  AdaptiveLayout
//
//  Created by huahuahu on 2018/7/22.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ButtomMarginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //iphonx 距离顶部44，在safeArea 之内
        // 非 iphonex，距离顶部30
        let blueView = UIView.init()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        let bottomConstraint = blueView.topAnchor.constraint(equalTo: view.topAnchor, constant:30)
        bottomConstraint.priority = .defaultHigh
        let constraints = [blueView.heightAnchor.constraint(equalToConstant: 30),
                           blueView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 50),
                           blueView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -50),
                           bottomConstraint,
                           blueView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor)]
        NSLayoutConstraint.activate(constraints)
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
