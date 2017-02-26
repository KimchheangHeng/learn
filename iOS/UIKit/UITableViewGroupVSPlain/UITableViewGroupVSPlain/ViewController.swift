//
//  ViewController.swift
//  UITableViewGroupVSPlain
//
//  Created by huahuahu on 2017/2/15.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    let plainButton = UIButton.init()
    let groupButton = UIButton.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        plainButton.setTitle("pushPlain", for: .normal)
        groupButton.setTitle("pushGroup", for: .normal)
        
        plainButton.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        groupButton.frame = CGRect.init(x: 100, y: 400, width: 100, height: 100)
        
        self.view.addSubview(self.plainButton)
        self.view.addSubview(self.groupButton)
        
        self.plainButton.addTarget(self, action: #selector(ViewController.pushPlain), for: .touchUpInside)
        
    }

    func pushPlain() -> Void {
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func pushGroup() -> Void {
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

