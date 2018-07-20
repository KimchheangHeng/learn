//
//  PreserveMarginViewController.swift
//  SafeAreaAndLayoutMargin
//
//  Created by huahuahu on 2018/7/20.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class PreserveMarginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        viewRespectsSystemMinimumLayoutMargins = true
//        view.insetsLayoutMarginsFromSafeArea = true
//        view.layoutMargins = UIEdgeInsets(top: 140, left: 140, bottom: 140, right: 140)
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        purpleView.layoutMargins = UIEdgeInsets(top: 140, left: 140, bottom: 140, right: 140)
        view.addSubview(purpleView)
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: purpleView.topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true

        
        let orangeView = UIView()
        orangeView.preservesSuperviewLayoutMargins = true
        orangeView.backgroundColor = .orange
        purpleView.addSubview(orangeView)
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.topAnchor.constraint(equalTo: orangeView.topAnchor, constant: -50).isActive = true
        purpleView.leadingAnchor.constraint(equalTo: orangeView.leadingAnchor).isActive = true
        purpleView.trailingAnchor.constraint(equalTo: orangeView.trailingAnchor).isActive = true
        purpleView.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor).isActive = true
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        orangeView.addSubview(yellowView)
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.layoutMarginsGuide.topAnchor.constraint(equalTo: yellowView.topAnchor).isActive = true
        orangeView.layoutMarginsGuide.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor).isActive = true
        orangeView.layoutMarginsGuide.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor).isActive = true
        orangeView.layoutMarginsGuide.bottomAnchor.constraint(equalTo: yellowView.bottomAnchor).isActive = true
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
