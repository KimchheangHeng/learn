//
//  SubViewController.swift
//  AppStoreAnimation
//
//  Created by huahuahu on 2018/8/3.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "Update", style: .done, target: nil, action: nil)
        self.navigationItem.title = "subvc"
        self.navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.

        let scrollView = UIScrollView.init()
        scrollView.contentSize = CGSize.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 2)
        scrollView.backgroundColor = .red
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        let constraints = [scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//                           scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//                           scrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//                           scrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)]
        let constraints = [scrollView.topAnchor.constraint(equalTo: view.topAnchor),
                           scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                           scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
                           scrollView.rightAnchor.constraint(equalTo: view.rightAnchor)]

        NSLayoutConstraint.activate(constraints)

        let topView = UIView.init()
        topView.backgroundColor = .blue
        topView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(topView)
        let topConstraints = [topView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                              topView.widthAnchor.constraint(equalToConstant: 50),
                              topView.heightAnchor.constraint(equalToConstant: 50),
                              topView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 90)]
        NSLayoutConstraint.activate(topConstraints)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
