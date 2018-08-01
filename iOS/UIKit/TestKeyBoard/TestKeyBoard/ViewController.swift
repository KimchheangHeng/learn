//
//  ViewController.swift
//  TestKeyBoard
//
//  Created by huahuahu on 2018/7/27.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var acctextView: UITextView =  UITextView.init()
    var hideButton = UIButton.init()
    var fullScreenButton = UIButton.init()
    var accView = UIView.init()
    
    @IBOutlet weak var ouView: UITextView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ouView.keyboardDismissMode = .interactive
        ouView.delegate = self
        
        ouView.inputAccessoryView = accView
        accView.backgroundColor = UIColor.white
        accView.bounds.size = CGSize.init(width: view.bounds.size.width, height: 40)

        accView.addSubview(hideButton)
        hideButton.translatesAutoresizingMaskIntoConstraints = false
        hideButton.backgroundColor = UIColor.red
        hideButton.setTitle("hide", for: .normal)
        hideButton.setTitleColor(.black, for: .normal)
        hideButton.addTarget(self, action: #selector(type(of: self).hidedd), for: .touchUpInside)
        let buttonConstraints = [hideButton.widthAnchor.constraint(equalToConstant: 40),
                                 hideButton.heightAnchor.constraint(equalTo: accView.heightAnchor),
                                 hideButton.leadingAnchor.constraint(equalTo: accView.layoutMarginsGuide.leadingAnchor),
                                 hideButton.topAnchor.constraint(equalTo: accView.topAnchor)]
        NSLayoutConstraint.activate(buttonConstraints)
        
        accView.addSubview(fullScreenButton)
        fullScreenButton.translatesAutoresizingMaskIntoConstraints = false
        fullScreenButton.backgroundColor = UIColor.red
        fullScreenButton.setTitle("fullScreen", for: .normal)
        fullScreenButton.setTitleColor(.black, for: .normal)
        fullScreenButton.addTarget(self, action: #selector(type(of: self).fullScreen), for: .touchUpInside)
        let fullScreenButtonConstraints = [fullScreenButton.widthAnchor.constraint(equalToConstant: 40),
                                 fullScreenButton.heightAnchor.constraint(equalTo: accView.heightAnchor),
                                 fullScreenButton.trailingAnchor.constraint(equalTo: accView.layoutMarginsGuide.trailingAnchor),
                                 fullScreenButton.topAnchor.constraint(equalTo: accView.topAnchor)]
        NSLayoutConstraint.activate(fullScreenButtonConstraints)

        
        
        accView.addSubview(acctextView)
        acctextView.backgroundColor = UIColor.yellow
        acctextView.translatesAutoresizingMaskIntoConstraints = false
        acctextView.returnKeyType = .done
        acctextView.delegate = self
        
        let acctextViewConstraints = [acctextView.trailingAnchor.constraint(equalTo: fullScreenButton.leadingAnchor),
                                      acctextView.heightAnchor.constraint(equalTo: accView.heightAnchor),
                                      acctextView.leadingAnchor.constraint(equalTo: hideButton.trailingAnchor),
                                      acctextView.topAnchor.constraint(equalTo: accView.topAnchor)]
        NSLayoutConstraint.activate(acctextViewConstraints)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView == acctextView {
            print("textView == acctextView")
        } else {
            acctextView.text = ouView.text
            acctextView.becomeFirstResponder()
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        guard textView == acctextView else {
            assertionFailure()
            return false
        }
        if text == "\n" {
            acctextView.resignFirstResponder()
            return false
        } else {
            return true
        }
    }

    func textViewDidChange(_ textView: UITextView) {
        if textView == ouView {
            print("change ouview")
        } else if textView == acctextView {
            ouView.text = acctextView.text
        } else {
            assertionFailure()
        }
    }
    
}

extension ViewController {
    @objc func hidedd() {
        acctextView.resignFirstResponder()
        ouView.resignFirstResponder()
    }
    
    @objc func fullScreen() {
        if self.accView.bounds.size.height > 50 {
            UIView.animate(withDuration: 0.25) {
                self.accView.bounds.size = CGSize.init(width: self.view.bounds.size.width, height: 40)
                self.view.layoutIfNeeded()
                self.hideButton.isHidden = false
                self.fullScreenButton.isHidden = false
            }

        } else {
            UIView.animate(withDuration: 0.25) {
                self.accView.bounds.size = CGSize.init(width: self.view.bounds.size.width, height: 300)
                self.view.layoutIfNeeded()
                self.hideButton.isHidden = true
//                self.fullScreenButton.isHidden = true
            }
        }
    }
}

//extension ViewController: UITextFieldDelegate {
//
//    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        guard textField == acctextView else {
//            fatalError()
//        }
//        print("\(string)")
//        ouView.text = acctextView.text
//        if string == "\n" {
//            acctextView.resignFirstResponder()
//            return false
//        } else {
//            return true
//        }
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        guard textField == acctextView else {
//            fatalError()
//        }
//        acctextView.resignFirstResponder()
//        return false
//    }
//
//
//}
