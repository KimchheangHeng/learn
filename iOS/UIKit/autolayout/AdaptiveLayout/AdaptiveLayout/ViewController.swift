//
//  ViewController.swift
//  AdaptiveLayout
//
//  Created by huahuahu on 2018/7/22.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let longStr = "Ground-up coverage of how to make an app that can fit on devices of every size and shape. Make your app fit beautifully on Apple's full range of devices with the minimum amount of effort, future-proofing your user experience along the way."

    let strs = ["hide navigative", "really hide", "Ground-up coverage of how to make an app that can fit on devices of every size and shape. Make your app fit beautifully on Apple's full range of devices with the minimum amount of effort, future-proofing your user experience along the way."]
    let cellid = "cellid"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        tableView.insetsContentViewsToSafeArea = true
        tableView.cellLayoutMarginsFollowReadableWidth = true
        tableView.contentInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 0, right: 0)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        let text = strs[indexPath.row]
        cell.textLabel?.text = text
        cell.contentView.backgroundColor = UIColor.blue
        cell.backgroundColor = UIColor.red
        cell.selectedBackgroundView?.backgroundColor = UIColor.yellow
        cell.selectionStyle = .none
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SubViewController()
        if indexPath.row == 1 {
            vc.reallyHide = true
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        assert(scrollView == tableView)
        print("contentInsets is \(scrollView.contentInset), adjustedInset is \(scrollView.adjustedContentInset)")
    }
}

