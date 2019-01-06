//
//  THScrollView.swift
//  ScrollViewMaxHeight
//
//  Created by huahuahu on 2019/1/2.
//  Copyright © 2019 郭腾虎. All rights reserved.
//

import UIKit

class THScrollView: UIScrollView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var currentHeight: CGFloat?
    
    override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        if currentHeight != nil {
            size.height = currentHeight!
        }
        return size
    }

}
