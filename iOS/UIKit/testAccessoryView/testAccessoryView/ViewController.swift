//
//  ViewController.swift
//  testAccessoryView
//
//  Created by huahuahu on 2018/8/9.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.translatesAutoresizingMaskIntoConstraints = false
        let layouts = [textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                       textView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                       textView.heightAnchor.constraint(equalToConstant: textView.font!.lineHeight),
                       textView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)]
        NSLayoutConstraint.activate(layouts)
        
        // 不展示右部滚动条
        textView.showsVerticalScrollIndicator = false
        // 可以调整 contentinset
        textView.textContainerInset = UIEdgeInsets.init(top: 5, left: 8, bottom: 9, right: 8)
        textView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITextViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        assert(scrollView == textView)
        print("\(#function)")
        // 始终定位在底部
        textView.contentOffset = CGPoint.init(x: 0, y: textView.contentSize.height - textView.bounds.size.height - textView.textContainerInset.bottom)
    }
}
