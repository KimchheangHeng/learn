//
//  ViewController.swift
//  autoLayoutTest
//
//  Created by huahuahu on 2018/12/30.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import UIKit
import SnapKit

class TestHideVC: UIViewController {

    @IBOutlet weak var hideButton: UIButton!
    let leftView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.accessibilityLabel = "leftview"
        view.accessibilityIdentifier = "leftview"
        return view
    }()

    let rightView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.accessibilityLabel = "rightview"
        view.accessibilityIdentifier = "rightview"
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(leftView)
        view.addSubview(rightView)
        leftView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().labeled("左边对齐")
            make.top.equalTo(hideButton.snp.bottom).offset(200)
            make.height.equalTo(100)
            make.trailing.equalTo(rightView.snp.leading).offset(-30).labeled("间距30")
        }
        rightView.snp.makeConstraints { (make) in
            make.top.height.equalTo(leftView).labeled("垂直和leftView对齐")
            make.trailing.equalToSuperview().labeled("右边对齐")
            make.width.equalTo(100).labeled("宽度100")
        }
    }
    

    @IBAction func onHide(_ sender: Any) {
        rightView.isHidden.toggle()
//        leftView.isHidden.toggle()
    }
    
}

