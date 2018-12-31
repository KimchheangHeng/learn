//
//  ViewController.swift
//  AutoHeightTextView
//
//  Created by huahuahu on 2018/12/31.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: HHTextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.textContainerInset = .zero
        let maxConstraint = textView.heightAnchor.constraint(lessThanOrEqualToConstant: 100)
        let minConstraint = textView.heightAnchor.constraint(greaterThanOrEqualToConstant: textView.font!.lineHeight)
        NSLayoutConstraint.activate([maxConstraint, minConstraint])
        textView.invalidateIntrinsicContentSize()
        print("init offset is \(textView.contentOffset) inset is \(textView.contentInset), adjusted is \(textView.adjustedContentInset)")
//        textView.contentInsetAdjustmentBehavior = .never

    }
}

extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        textView.invalidateIntrinsicContentSize()
    }

    func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
        print("current inset is \(textView.contentInset), adjusted is \(textView.adjustedContentInset)")
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("current offset is \(scrollView.contentOffset)")
    }
}
