//
//  ViewController.swift
//  MultiGesture
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIGestureRecognizerDelegate {
    

    @IBOutlet weak var pan_swipe_label: UILabel!
    @IBOutlet weak var tapLabel: UILabel!
    var tapGesture:UITapGestureRecognizer!
    var doubleTapGesture:UITapGestureRecognizer!
    var swipeGesture:UISwipeGestureRecognizer!
    var panGesture:UIPanGestureRecognizer!
    static var t:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.multiTap()
        self.pan_swipe()
        self.buttonstuff()
    }
    
    func buttonstuff() -> Void {
        let button = UIButton.init(frame: CGRect.init(x: 100, y: 300, width: 100, height: 100))
        button.setTitle("button", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(self.clicked), for: .touchUpInside)
        view.addSubview(button)
        
        //加一个手势
        //installing a gesture recognizer directly on a control prevents that control from calling its action method
        //这样子，touchupinside永远不会被调用了
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(self.taped))
        button.addGestureRecognizer(tap)
    }
    
    func pan_swipe() -> Void {
        pan_swipe_label.isUserInteractionEnabled = true
        //pan
        panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(self.pan))
        panGesture.delegate = self
        pan_swipe_label.addGestureRecognizer(panGesture)
        
        //swipe
        swipeGesture = UISwipeGestureRecognizer.init(target: self, action: #selector(self.swipe))
        swipeGesture.delegate = self
        pan_swipe_label.addGestureRecognizer(swipeGesture)
    }
    
    //单击和双击手势
    func multiTap() -> Void {
        tapLabel.isUserInteractionEnabled = true
        //单击手势
        let oneTap = UITapGestureRecognizer.init(target: self, action: #selector(self.oneTap))
        oneTap.numberOfTapsRequired = 1
        tapLabel.addGestureRecognizer(oneTap)
        oneTap.delegate = self
        tapGesture = oneTap
        
        //双击手势
        let twoTap = UITapGestureRecognizer.init(target: self, action: #selector(self.twoTap))
        twoTap.numberOfTapsRequired = 2
        tapLabel.addGestureRecognizer(twoTap)
        twoTap.delegate = self
        doubleTapGesture = twoTap
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func oneTap() -> Void {
        print("one Tap")
    }
    
    @objc func twoTap() -> Void {
        print("twoTap")
    }
    
    @objc func pan() -> Void {
        
        print("pan \(ViewController.t)")
        ViewController.t = ViewController.t + 1
    }
    
    @objc func swipe() -> Void {
        print("swipe")
    }
    
    @objc func clicked(){
        print("clicked")
    }
    
    @objc func taped(){
        print("tapped \(ViewController.t)")
        ViewController.t = ViewController.t + 1
    }

}

extension ViewController
{
    @objc func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        // Don't recognize a single tap until a double-tap fails.
        if gestureRecognizer == self.tapGesture &&
            otherGestureRecognizer == self.doubleTapGesture {
            return true
        }
        return false
    }
    //这个函数是上一个函数的反式
    @objc func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        // Do not begin the pan until the swipe fails.
        if gestureRecognizer == self.swipeGesture &&
            otherGestureRecognizer == self.panGesture {
            return true
        }
        return false
    }


}
