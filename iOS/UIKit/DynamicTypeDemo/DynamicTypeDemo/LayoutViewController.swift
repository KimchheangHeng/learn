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

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.layoutForSize(UIApplication.shared.preferredContentSizeCategory)
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

    }

    func layoutForOneline() -> Void {
        firstLabel.remove
    }

    func layoutForTwoLine() -> Void {
        <#function body#>
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
