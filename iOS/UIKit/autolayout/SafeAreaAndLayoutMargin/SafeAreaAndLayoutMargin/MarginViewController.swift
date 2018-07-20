//
//  MarginViewController.swift
//  SafeAreaAndLayoutMargin
//
//  Created by huahuahu on 2018/7/20.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class MarginViewController: UIViewController {
    
    var bgView: UIView!
    var topView: UIView!
    var button: UIButton!
    var rightView: UIView!
    var preservesSuperviewLayoutMarginsView: UIView!
    var innerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red
        bgView = UIView.init()
        
        //bgview
//        self.additionalSafeAreaInsets = UIEdgeInsets.init(top: 20, left: 30, bottom: 0, right: 10)
        bgView.backgroundColor = UIColor.blue
        bgView.layoutMargins = UIEdgeInsets.init(top: 100, left: 50, bottom: 100, right: 40)
        view.addSubview(bgView)
        bgView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            bgView.topAnchor.constraint(equalTo: view.topAnchor),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
        NSLayoutConstraint.activate(constraints)
        
        preservesSuperviewLayoutMarginsView = UIView.init()
        preservesSuperviewLayoutMarginsView.preservesSuperviewLayoutMargins = true
        preservesSuperviewLayoutMarginsView.backgroundColor = UIColor.purple
        bgView.addSubview(preservesSuperviewLayoutMarginsView)
        
        preservesSuperviewLayoutMarginsView.translatesAutoresizingMaskIntoConstraints = false
        bgView.accessibilityIdentifier = "bgview"
        preservesSuperviewLayoutMarginsView.accessibilityIdentifier = "preserview"
        //        let preserveConstranit = [preservesSuperviewLayoutMarginsView.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 0),
        //                                  preservesSuperviewLayoutMarginsView.bottomAnchor.constraint(equalTo: bgView.bottomAnchor, constant: 0),
        //                                  preservesSuperviewLayoutMarginsView.leadingAnchor.constraint(equalTo: bgView.leadingAnchor),
        //                                  preservesSuperviewLayoutMarginsView.trailingAnchor.constraint(equalTo: bgView.trailingAnchor)]
        let preserveConstranit = [preservesSuperviewLayoutMarginsView.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 10),
                                  preservesSuperviewLayoutMarginsView.bottomAnchor.constraint(equalTo: bgView.bottomAnchor, constant: 0),
                                  preservesSuperviewLayoutMarginsView.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
                                  preservesSuperviewLayoutMarginsView.widthAnchor.constraint(equalTo: bgView.widthAnchor)]
        
        NSLayoutConstraint.activate(preserveConstranit)
        
        //        https://www.shinobicontrols.com/blog/ios8-day-by-day-day-32-layout-margins
        innerView = UIView.init()
        innerView.backgroundColor = UIColor.white
        preservesSuperviewLayoutMarginsView.addSubview(innerView)
//        innerView.preservesSuperviewLayoutMargins = false
        innerView.translatesAutoresizingMaskIntoConstraints = false
        preservesSuperviewLayoutMarginsView.layoutMargins = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //一定要用layoutmarginguide
        let innerConstraint = [innerView.topAnchor.constraint(equalTo: preservesSuperviewLayoutMarginsView.layoutMarginsGuide.topAnchor),
                               innerView.leadingAnchor.constraint(equalTo: preservesSuperviewLayoutMarginsView.layoutMarginsGuide.leadingAnchor, constant: 0),
                               innerView.bottomAnchor.constraint(equalTo: preservesSuperviewLayoutMarginsView.layoutMarginsGuide.bottomAnchor, constant: 0),
                               innerView.trailingAnchor.constraint(equalTo: preservesSuperviewLayoutMarginsView.layoutMarginsGuide.trailingAnchor, constant: 0)]
        NSLayoutConstraint.activate(innerConstraint)

        

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
        let buttonConstraint = [button.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
                                button.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor)]
        NSLayoutConstraint.activate(buttonConstraint)

        rightView = UIView.init()
        view.addSubview(rightView)
        rightView.backgroundColor = UIColor.white
        rightView.frame = CGRect.init(x: 300, y: 400, width: 300, height: 30)

        // 这里可以修改 layoutmargin
        topView.layoutMargins = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        [topView, rightView].forEach { (viewa) in
            let label = UILabel.init()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = UIColor.purple
            viewa?.addSubview(label)
            label.text = "tesx"
            let labelConstranits = [label.topAnchor.constraint(equalTo: viewa!.layoutMarginsGuide.topAnchor),
                                   label.leftAnchor.constraint(equalTo: viewa!.layoutMarginsGuide.leftAnchor)]
            NSLayoutConstraint.activate(labelConstranits)
            // 如果这个是false，那么topview中的label，可以出现在safeArea区域之外 topView.layoutMargins维持为0
            // 如果这个是true，那么topview的lable一定在safeArea之内。topView.layoutMargins也会变化
            viewa!.insetsLayoutMarginsFromSafeArea = false

        }
//
        
        
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
        print("button frame:\(button.convert(button.bounds, to: nil))")
        
        
        print("view margin: \(view.layoutMargins), insetsLayoutMarginsFromSafeArea: \(view.insetsLayoutMarginsFromSafeArea)")
        print("topview margin: \(topView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(topView.insetsLayoutMarginsFromSafeArea)")
        print("rightView margin: \(rightView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(rightView.insetsLayoutMarginsFromSafeArea)")
        print("bgview margin: \(bgView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(bgView.insetsLayoutMarginsFromSafeArea)")
        print("preservesSuperviewLayoutMarginsView margin: \(preservesSuperviewLayoutMarginsView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(preservesSuperviewLayoutMarginsView.insetsLayoutMarginsFromSafeArea), \(preservesSuperviewLayoutMarginsView.preservesSuperviewLayoutMargins)")
        print("innerView margin: \(innerView.layoutMargins), insetsLayoutMarginsFromSafeArea: \(innerView.insetsLayoutMarginsFromSafeArea)")


    }
    
}
