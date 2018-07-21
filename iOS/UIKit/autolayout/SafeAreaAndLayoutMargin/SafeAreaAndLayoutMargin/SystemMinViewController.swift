
//
//  SystemMinViewController.swift
//  SafeAreaAndLayoutMargin
//
//  Created by huahuahu on 2018/7/20.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import os

class SystemMinViewController: UIViewController {

    let log = OSLog.init(subsystem: "com.tiger.test", category: "systemMin")
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewRespectsSystemMinimumLayoutMargins = true

        view.directionalLayoutMargins = NSDirectionalEdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0)
//        view.insetsLayoutMarginsFromSafeArea = false
        let bgview = UIView.init()
        bgview.backgroundColor = UIColor.red
        bgview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bgview)
        let constraints = [
        bgview.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
        bgview.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
        bgview.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor),
        bgview.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor)]
        // 不使用 layoutMarginsGuide，viewRespectsSystemMinimumLayoutMargins不起作用
//        let constraints = [
//            bgview.topAnchor.constraint(equalTo: view.topAnchor),
//            bgview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            bgview.leftAnchor.constraint(equalTo: view.leftAnchor),
//            bgview.rightAnchor.constraint(equalTo: view.rightAnchor)]
        NSLayoutConstraint.activate(constraints)



        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("min margin is \(self.systemMinimumLayoutMargins)")
        print("viewRespectsSystemMinimumLayoutMargins: \(self.viewRespectsSystemMinimumLayoutMargins)")
        print("view.layoutMargins: \(view.layoutMargins)")
    }
}
