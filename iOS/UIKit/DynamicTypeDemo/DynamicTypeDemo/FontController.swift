//
//  ViewController.swift
//  DynamicTypeDemo
//
//  Created by huahuahu on 2018/7/7.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import UIKit

class FontController: UIViewController {

    @IBOutlet weak var storyLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIContentSizeCategoryDidChange, object: .none, queue: OperationQueue.main) { (notify) in
            let aa: UIContentSizeCategory = notify.userInfo?[UIContentSizeCategoryNewValueKey] as! UIContentSizeCategory
            print(aa)
        }

        let label = UILabel.init()
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.text = "coded text"
        label.adjustsFontForContentSizeCategory = true
        label.backgroundColor = UIColor.lightGray
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
    label.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(storyLable.lastBaselineAnchor, multiplier: 1).isActive = true
        label.centerXAnchor.constraint(equalTo: storyLable.centerXAnchor).isActive = true

        //customFont
        let fontName = "Futura-MediumItalic"
        // 这个 size 变大，最后的font也会变大，好神奇
        guard let customFont = UIFont.init(name: fontName, size: UIFont.labelFontSize) else {
            print("not found font \(fontName)")
            return
        }

        let customLabel = UILabel.init()
        let fontMetrics = UIFontMetrics.init(forTextStyle: .largeTitle)
        customLabel.font = fontMetrics.scaledFont(for: customFont)
        customLabel.text = "custom text"
        customLabel.adjustsFontForContentSizeCategory = true
        customLabel.backgroundColor = UIColor.lightGray
        view.addSubview(customLabel)
        customLabel.translatesAutoresizingMaskIntoConstraints = false
    customLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(label.lastBaselineAnchor, multiplier: 1).isActive = true
        customLabel.centerXAnchor.constraint(equalTo: label.centerXAnchor).isActive = true

    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

