//
//  HHTextView.swift
//  AutoHeightTextView
//
//  Created by huahuahu on 2018/12/31.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import UIKit

class HHTextView: UITextView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.height =  max(font!.lineHeight, contentSize.height)
        return size
    }

//    override func setContentOffset(_ contentOffset: CGPoint, animated: Bool) {
//        super.setContentOffset(contentOffset, animated: false)
//    }

}
