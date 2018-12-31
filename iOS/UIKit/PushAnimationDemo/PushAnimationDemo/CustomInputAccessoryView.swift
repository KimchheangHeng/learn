//
//  CustomInputAccessoryView.swift
//  PushAnimationDemo
//
//  Created by huahuahu on 2018/12/28.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import UIKit
import SnapKit

class CustomInputAccessoryView: UIView {
    var blueView: UIView = {
        let view = UIView()
        view.accessibilityIdentifier = "blueview"
        view.backgroundColor = .blue
        
        return view
    }()
    
    var yellowView: UIView = {
        let view = UIView()
        view.accessibilityIdentifier = "yellow"
        view.backgroundColor = .yellow
        return view
    }()
    
    var redView: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.accessibilityIdentifier = "redview"
        return view
    }()
    
    var blueViewInited = false
    
    var currentView: UIView!
    
    func setup() {
//        addSubview(blueView)
        addSubview(redView)
        redView.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().labeled("左右下对齐")
            make.leading.equalTo(0)
            make.width.equalToSuperview()
            make.height.equalTo(100).labeled("高度100")
        }
        currentView = redView
    }
    
//    override var intrinsicContentSize: CGSize {
//        var size = super.intrinsicContentSize
//        size.height = currentView.bounds.height
//        return size
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func switchView() {
        if blueViewInited == false {
            blueViewInited = true
            addSubview(blueView)
            blueView.snp.makeConstraints { (make) in
                make.bottom.equalToSuperview().labeled("左右下对齐")
                make.leading.equalTo(bounds.width)
                make.width.equalToSuperview()
                make.height.equalTo(100).labeled("高度150")
            }
            addSubview(yellowView)
            yellowView.snp.makeConstraints { (make) in
                make.leading.trailing.equalToSuperview()
                make.bottom.equalTo(blueView.snp.top)
                make.height.equalTo(0)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
            UIView.animate(withDuration: 0.3) {
                self.changeView()
                self.setNeedsLayout()
                self.layoutIfNeeded()
            }
        }
        DispatchQueue.main.async {
        }
//        addSubview(currentView)
    }
    
    func changeView() {
        let nextView = currentView == blueView ? redView : blueView

        if currentView == redView {
            redView.snp.updateConstraints { (make) in
                make.leading.equalTo(-bounds.width)
            }
            blueView.snp.updateConstraints { (make) in
                make.leading.equalTo(0)
            }
            yellowView.snp.updateConstraints { (make) in
                make.height.equalTo(50)
            }
        } else {
            redView.snp.updateConstraints { (make) in
                make.leading.equalTo(0)
            }
            blueView.snp.updateConstraints { (make) in
                make.leading.equalTo(bounds.width)
            }
            yellowView.snp.updateConstraints { (make) in
                make.height.equalTo(0)
            }
        }
        currentView = nextView

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let pointInSubView = convert(point, to: currentView)
        return currentView.hitTest(pointInSubView, with: event)
    }
}
