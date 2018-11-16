//
//  ViewController.swift
//  testNavigationBar
//
//  Created by huahuahu on 2018/8/11.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "right", style: .plain, target: nil, action: nil)
        self.navigationItem.title = "Title"
        
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage.init(), for: .default)
        self.navigationController?.navigationBar.barTintColor = .yellow
        self.navigationController?.navigationBar.tintColor = .brown
//        self.navigationController?.navigationBar.barStyle = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! UITableViewCell
        cell.textLabel?.text = "tesatadfasdfa"
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
}
