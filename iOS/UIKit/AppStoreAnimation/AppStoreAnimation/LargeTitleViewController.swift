//
//  LargeTitleViewController.swift
//  AppStoreAnimation
//
//  Created by huahuahu on 2018/8/4.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class LargeTitleViewController: UITableViewController {
    private let cellid = "celldid"
    private let button = UIButton.init()
    private let topview = UIView.init()
    private var heightConstraint = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)

        // Do any additional setup after loading the view.
        self.navigationItem.largeTitleDisplayMode = .automatic
        let refreshControsl = UIRefreshControl.init()
        self.refreshControl = refreshControsl
        self.refreshControl?.addTarget(self, action: #selector(type(of: self).refreshd), for: .valueChanged)
        self.navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "Large", style: .plain, target: nil, action: nil)
        self.navigationItem.title = "Large"
        tableView.backgroundColor = .red

        // topright button
        button.backgroundColor = UIColor.yellow
        button.setTitle("button", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(type(of: self).onTap(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        topview.addSubview(button)
        topview.translatesAutoresizingMaskIntoConstraints = false
        topview.clipsToBounds = true

        if let navibar = self.navigationController?.navigationBar {
            navibar.addSubview(topview)
            heightConstraint = [topview.heightAnchor.constraint(equalToConstant: 40)]
            let viewConstraints = [topview.trailingAnchor.constraint(equalTo: navibar.layoutMarginsGuide.trailingAnchor),
                                     topview.bottomAnchor.constraint(equalTo: navibar.bottomAnchor, constant: -10),
                                     topview.widthAnchor.constraint(equalToConstant: 100)]
            let buttonConstraints = [button.trailingAnchor.constraint(equalTo: topview.trailingAnchor),
                                     button.leadingAnchor.constraint(equalTo: topview.leadingAnchor),
                                     button.bottomAnchor.constraint(equalTo: topview.bottomAnchor),
                                     button.heightAnchor.constraint(equalToConstant: 40)]

            let allconstraint =  viewConstraints + heightConstraint + buttonConstraints
            NSLayoutConstraint.activate(allconstraint)
        }

        // gesture to adjust topright button alpha
        navigationController?.interactivePopGestureRecognizer?.addTarget(self, action: #selector(type(of: self).onGesture(sender:)))


    }

    //adjust topright button alpha
    @objc func onGesture(sender: UIGestureRecognizer) {
        switch sender.state {
        case .began, .changed:
            if let ct = navigationController?.transitionCoordinator {
                topview.alpha =  ct.percentComplete
            }
        case .cancelled, .ended:
            return
        case .possible, .failed:
            break
        }
    }

    @objc func refreshd() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.refreshControl?.endRefreshing()
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        button.isHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        button.isHidden = true
    }

    @objc func onTap(_ sender: UIButton) ->  Swift.Void {
        assert(sender == button)
        print("tapp")
        let vc = SubViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension LargeTitleViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        cell.textLabel?.text = "fdfddfasdkflas;dkfla'"
        cell.backgroundColor = .red
        return cell
    }

    // adjust topview height
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard  let navBar = self.navigationController?.navigationBar else {
            return
        }
        // hardcoded .. to improve
        if navBar.bounds.height > 44 + 40 + 10 {
            NSLayoutConstraint.deactivate(heightConstraint)
            heightConstraint = [topview.heightAnchor.constraint(equalToConstant: 40)]
            NSLayoutConstraint.activate(heightConstraint)
        } else {
            NSLayoutConstraint.deactivate(heightConstraint)
            var  height = navBar.bounds.height - 44 - 10
            if height < 0 {
                height = 0
            }
            heightConstraint = [topview.heightAnchor.constraint(equalToConstant: height)]
            NSLayoutConstraint.activate(heightConstraint)

        }

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SubViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



