//
//  ViewController.swift
//  ShadowPathDemo
//
//  Created by huahuahu on 2018/12/25.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let blueView = UIView.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blueView.backgroundColor = UIColor.init(displayP3Red: 0, green: 0, blue: 1, alpha: 0.2)
        let edgeView = ShadowEdgeView.init(frame: .zero)
        view.addSubview(blueView)
        blueView.addSubview(edgeView)
        blueView.snp.makeConstraints { (make) in
            make.height.equalTo(300)
            make.leading.trailing.centerY.equalToSuperview()
        }

        edgeView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(2)
            make.bottom.equalTo(blueView.snp.top)
        }
    }


}

