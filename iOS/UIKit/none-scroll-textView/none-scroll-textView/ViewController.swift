//
//  ViewController.swift
//  none-scroll-textView
//
//  Created by huahuahu on 2018/8/5.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ts: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ts.delegate = self
//        ts.isScrollEnabled = false
        ts.textContainerInset = UIEdgeInsets.zero
        ts.alwaysBounceVertical = false
        ts.showsVerticalScrollIndicator = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        
        textView.contentOffset = CGPoint.init(x: 0, y: textView.contentSize.height - textView.bounds.size.height - textView.textContainerInset.bottom)
//        textView.contentOffset = CGPoint.init(x: 0, y: textView.contentSize.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentOffset = CGPoint.init(x: 0, y: ts.contentSize.height - ts.bounds.size.height - ts.textContainerInset.bottom)

    }
    
}

