//
//  ViewController.swift
//  TableViewAnimate
//
//  Created by huahuahu on 2018/7/5.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellid = "cellid"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        self.navigationItem.leftBarButtonItem =  UIBarButtonItem.init(title: "wrong", style: .plain , target: self, action: #selector(ViewController.wrongAnimate))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "right", style: .plain, target: self, action: #selector(ViewController.rightAnimate))
    }
    var sources = ["first", "second", "third", "forth"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sources.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        cell.textLabel?.text = sources[indexPath.row]
        return cell
    }
    
    @objc func rightAnimate() -> Void {
        UIView.performWithoutAnimation {
            sources[3] = "new forth"
            tableView.reloadData()
        }
        tableView.performBatchUpdates({
            sources.remove(at: 3)
            sources.remove(at: 2)
            sources.insert("new forth", at: 0)
            
            // delete 指的是动画前的indexpath
            tableView.deleteRows(at: [IndexPath.init(row: 3, section: 0)], with: .automatic)
            tableView.deleteRows(at: [IndexPath.init(row: 2, section: 0)], with: .automatic)
            
            // insert 指的是动画后的 indexpath
            tableView.insertRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
            
        }) { (succ) in
            print("right \(succ)")
        }
    }
    @IBAction func reset(_ sender: Any) {
        sources = ["first", "second", "third", "forth"]
        tableView.reloadData()
    }
    
    @objc func wrongAnimate() -> Void {
        
        tableView.performBatchUpdates({
            sources.remove(at: 3)
            sources.remove(at: 2)
            sources.insert("new forth", at: 0)

            // will crash
            // attempt to perform a delete and a move from the same index path (<NSIndexPath: 0xc000000000600016> {length = 2, path = 0 - 3}
            // reload = delete + insert，于是 delete 和 move 在同一个位置，就crash了
            tableView.reloadRows(at: [IndexPath.init(row: 3, section: 0)], with: .automatic)
            tableView.moveRow(at: IndexPath.init(row: 3, section: 0), to: IndexPath.init(row: 0, section: 0))
            tableView.deleteRows(at: [IndexPath.init(row: 2, section: 0)], with: .automatic)

        }) { (succ) in
            print("left \(succ)")
        }
        
    }

}

