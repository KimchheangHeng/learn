//
//  LayoutViewController.swift
//  DynamicTypeDemo
//
//  Created by huahuahu on 2018/7/7.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {
    var onelineConstraint: [NSLayoutConstraint] = []
    var twolineConstraint: [NSLayoutConstraint] = []
    var isCurrentAccessibility = false

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.setContentHuggingPriority(UILayoutPriority.init(751), for: .horizontal)
        
        twolineConstraint = [ firstLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(view.layoutMarginsGuide.topAnchor, multiplier: 3),
                             firstLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
                             secondLabel.centerXAnchor.constraint(equalTo: firstLabel.centerXAnchor, constant: 0),
                             secondLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(firstLabel.lastBaselineAnchor, multiplier: 1)]

        onelineConstraint = [
            firstLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(view.layoutMarginsGuide.topAnchor, multiplier: 3),
            firstLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            firstLabel.trailingAnchor.constraint(equalTo: secondLabel.leadingAnchor, constant: 10),
            secondLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            secondLabel.firstBaselineAnchor.constraint(equalTo: firstLabel.firstBaselineAnchor, constant: 0)]

        self.layoutForSize(UIApplication.shared.preferredContentSizeCategory)
        isCurrentAccessibility = UIApplication.shared.preferredContentSizeCategory.isAccessibilityCategory
        if isCurrentAccessibility {
            layoutForTwoLine()
        } else {
            layoutForOneline()
        }
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(forName: .UIContentSizeCategoryDidChange, object: .none, queue: OperationQueue.main) { (notify) in
            let size = notify.userInfo![UIContentSizeCategoryNewValueKey] as! UIContentSizeCategory
            self.layoutForSize(size)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func layoutForSize(_ size: UIContentSizeCategory) -> Void {
        
//        if isCurrentAccessibility != size.isAccessibilityCategory {
            isCurrentAccessibility = size.isAccessibilityCategory
            if isCurrentAccessibility {
                layoutForTwoLine()
            } else {
                layoutForOneline()
            }
        }
//    }

    func layoutForOneline() -> Void {
        firstLabel.textAlignment = .left
        secondLabel.textAlignment = .right
        NSLayoutConstraint.deactivate(twolineConstraint)
        NSLayoutConstraint.activate(onelineConstraint)
        print("layout oneline")
    }

    func layoutForTwoLine() -> Void {
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.textAlignment = .center
        secondLabel.textAlignment = .center
        NSLayoutConstraint.deactivate(onelineConstraint)
        NSLayoutConstraint.activate(twolineConstraint)
        print("layout twoline")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
