//
//  ViewController.swift
//  ScrollViewMaxHeight
//
//  Created by huahuahu on 2019/1/2.
//  Copyright © 2019 郭腾虎. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let ibutton: UIButton = {
        let b = UIButton()
        b.setTitle("+", for: .normal)
        b.backgroundColor = .red
        return b
    }()
    
    let dbutton: UIButton = {
        let b = UIButton()
        b.setTitle("-", for: .normal)
        b.backgroundColor = .red
        return b
    }()
    
    let scrollview: THScrollView = {
        let v = THScrollView.init()
        v.isPagingEnabled = true
        return v
    }()
    
    var cellNumber = 1
    
    let scrollContentView = UIView()
    
    var v1: THTableView!
    var v2: THTableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(ibutton)
        view.addSubview(dbutton)
        ibutton.addTarget(self, action: #selector(increase), for: .touchUpInside)
        dbutton.addTarget(self, action: #selector(decrease), for: .touchUpInside)
        ibutton.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize.init(width: 100, height: 50))
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-50)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(40)
        }
        
        dbutton.snp.makeConstraints { (make) in
            make.size.equalTo(ibutton)
            make.bottom.equalTo(ibutton)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-40)
        }
        
        view.addSubview(scrollview)
        scrollview.backgroundColor = .blue
        scrollview.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-200)
            make.height.lessThanOrEqualTo(100)
        }
        
        scrollview.addSubview(scrollContentView)
        let tv1 = THTableView.init()
        tv1.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        v1 = tv1
        scrollContentView.addSubview(tv1)
        tv1.dataSource = self
        let tv2 = THTableView.init()
        v2 = tv2
        tv2.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        scrollContentView.addSubview(tv2)
        tv2.dataSource = self
        tv1.snp.makeConstraints { (make) in
            make.width.equalTo(self.view)
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.lessThanOrEqualToSuperview().labeled("比第一个高")
        }
        
        tv2.snp.makeConstraints { (make) in
            make.width.equalTo(self.view)
            make.leading.equalTo(tv1.snp.trailing)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.lessThanOrEqualToSuperview().labeled("比第二个高")
        }
        scrollContentView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-200)
        }
    }
    
    @objc func increase() {
        cellNumber += 1
        scrollview.currentHeight = CGFloat( 30 * cellNumber)
        v1.reloadData()
        v1.currentHeight = scrollview.currentHeight
        v1.invalidateIntrinsicContentSize()
        v2.reloadData()
        v2.currentHeight = scrollview.currentHeight

        v2.invalidateIntrinsicContentSize()
        scrollview.invalidateIntrinsicContentSize()
    }

    @objc func decrease() {
        cellNumber -= 1
        scrollview.currentHeight = CGFloat( 30 * cellNumber)
        v1.reloadData()
        v1.currentHeight = scrollview.currentHeight
        v1.invalidateIntrinsicContentSize()
        v2.reloadData()
        v2.currentHeight = scrollview.currentHeight
        
        v2.invalidateIntrinsicContentSize()
        scrollview.invalidateIntrinsicContentSize()

    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNumber
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
}
