//
//  ViewController.swift
//  SafeAreaAndLayoutMargin
//
//  Created by huahuahu on 2018/7/20.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bgView: UIView!
    var topView: UIView!
    var button: UIButton!
    var rightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red
        bgView = UIView.init()
        view.addSubview(bgView)
        
        //bgview
        self.additionalSafeAreaInsets = UIEdgeInsets.init(top: 20, left: 30, bottom: 0, right: 10)
        bgView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            bgView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bgView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)]
        NSLayoutConstraint.activate(constraints)
        bgView.backgroundColor = UIColor.blue

        

        topView = UIView.init()
        view.addSubview(topView)
        topView.frame = CGRect.init(x: 20, y: 0, width: 200, height: 400)
        topView.backgroundColor = UIColor.yellow
        
        button = UIButton.init()
        button.backgroundColor = UIColor.brown
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("info", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(type(of: self).printInfo), for: .touchUpInside)
        let buttonConstraint = [button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
                                button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)]
        NSLayoutConstraint.activate(buttonConstraint)

        rightView = UIView.init()
        view.addSubview(rightView)
        rightView.backgroundColor = UIColor.white
        rightView.frame = CGRect.init(x: 300, y: 400, width: 300, height: 30)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    
    @objc func printInfo() {
        // view 的 safeAreaInset + additionalSafeAreaInsets
        print("view safeArea: \(view.safeAreaInsets)")
        // 完全在内部，所以是 0
        print("bgview SafeArea: \(bgView.safeAreaInsets)")
        //top 和 left 在父view的 safeArea之外，所以 top和 left不是0，bottom和right 是0
        print("topview SafeArea: \(topView.safeAreaInsets)")
        // right 超出了父 view 的safeArea，但是right不会超过 父view的safe area
        print("rightView SafeArea: \(rightView.safeAreaInsets)")

        print("screen bounds: \(UIScreen.main.bounds)")
        // 在父 view safeAreaz 中央，而不是屏幕中央
        print("button frame:\(button.convert(button.bounds, to: nil))")
        
        
        print("view margin: \(view.layoutMargins), insetsLayoutMarginsFromSafeArea: \(view.insetsLayoutMarginsFromSafeArea)")
        print("bgview margin: \(bgView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(bgView.insetsLayoutMarginsFromSafeArea)")
        print("topview margin: \(topView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(topView.insetsLayoutMarginsFromSafeArea)")
        print("rightView margin: \(rightView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(rightView.insetsLayoutMarginsFromSafeArea)")

    }
    
}

