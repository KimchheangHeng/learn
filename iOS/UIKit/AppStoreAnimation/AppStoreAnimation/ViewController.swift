//
//  ViewController.swift
//  AppStoreAnimation
//
//  Created by huahuahu on 2018/8/1.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    private let cellid = "cellid"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "te", style: .done, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        cell.textLabel?.text = "fdfddfasdkflas;dkfla'"
        cell.backgroundColor = .red
        return cell
    }
}

