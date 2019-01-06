//
//  ViewController.swift
//  FrameKvo
//
//  Created by huahuahu on 2019/1/4.
//  Copyright © 2019 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let innerView = UIView()
    let outerView = UIView()
    var kvo: NSKeyValueObservation!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        outerView.backgroundColor = .red
        innerView.backgroundColor = .blue
        outerView.frame = .init(x: 20, y: 200, width: 100, height: 100)
        innerView.frame = .init(x: 10, y: 10, width: 10, height: 10)
        view.addSubview(outerView)
        outerView.addSubview(innerView)
        
        let button = UIButton.init(frame: .init(x: 100, y: 500, width: 100, height: 30))
        button.setTitle("change", for: .normal)
        button.addTarget(self, action: #selector(changeFrame), for: .touchUpInside)
        view.addSubview(button)
        
        button.backgroundColor = .red
        kvo = outerView.observe(\.center, changeHandler: { (_, change) in
            print("change:\(self.outerView)")
        })
    }

    
    @objc func changeFrame() {
        var frame = outerView.frame
        frame = frame.insetBy(dx: 0, dy: 1)
        outerView.frame = frame
        kvo.invalidate()
        kvo = outerView.observe(\.frame, changeHandler: { (_, change) in
            print("changedd:\(self.outerView)")
        })

    }
}

