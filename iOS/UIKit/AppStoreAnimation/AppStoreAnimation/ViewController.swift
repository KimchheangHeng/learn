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
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "te", style: .done, target: nil, action: nil)
        let headView = UIView.init()
        headView.frame = CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: tableView.bounds.width, height: 58))
        let label = UILabel.init()
        label.text = "Update"
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.adjustsFontForContentSizeCategory = true
        headView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [label.leadingAnchor.constraint(equalTo: headView.layoutMarginsGuide.leadingAnchor),
                           label.topAnchor.constraint(equalTo: headView.layoutMarginsGuide.topAnchor)]
        NSLayoutConstraint.activate(constraints)
        
        let button = UIButton.init()
        button.backgroundColor = UIColor.yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        headView.addSubview(button)
        let buttonConstraints = [button.trailingAnchor.constraint(equalTo: headView.layoutMarginsGuide.trailingAnchor),
                                 button.centerYAnchor.constraint(equalTo: label.centerYAnchor),
                                 button.widthAnchor.constraint(equalToConstant: 100),
                                 button.heightAnchor.constraint(equalToConstant: 40)]
        NSLayoutConstraint.activate(buttonConstraints)
        tableView.tableHeaderView = headView
        
        let refreshControsl = UIRefreshControl.init()
        self.refreshControl = refreshControsl
        self.refreshControl?.addTarget(self, action: #selector(type(of: self).refreshd), for: .valueChanged)
//        self.navigationController?.navigationBar.clipsToBounds = true
//        self.navigationController?.navigationBar.shadowImage = UIImage.init()
        self.navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "Update", style: .plain, target: nil, action: nil)
        tableView.backgroundColor = .red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func refreshd() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.refreshControl?.endRefreshing()
        }
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
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 64 {
            self.navigationItem.title = "Update"
        } else {
            self.navigationItem.title = nil
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SubViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



