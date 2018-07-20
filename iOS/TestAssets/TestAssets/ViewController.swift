//
//  ViewController.swift
//  TestAssets
//
//  Created by huahuahu on 2018/7/20.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let image = UIImage.init(named: "test/back")
        let image = UIImage.init(named: "back")
        let uiimageView = UIImageView.init(image: image)
        view.addSubview(uiimageView)
        uiimageView.translatesAutoresizingMaskIntoConstraints = false
        uiimageView.layer.cornerRadius = 5
        uiimageView.layer.masksToBounds = true
        uiimageView.layer.borderColor = UIColor.red.cgColor
        uiimageView.layer.borderWidth = 4
        let constraint = [
        uiimageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        uiimageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)]
        NSLayoutConstraint.activate(constraint)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

