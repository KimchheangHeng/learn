//
//  RecognizeViewController.swift
//  NLPDemo
//
//  Created by huahuahu on 2018/7/14.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import NaturalLanguage

class RecognizeViewController: UIViewController {

    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var resultTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClick(_ sender: UIButton) {
        inputTextView.resignFirstResponder()
        if inputTextView.text.isEmpty {
            resultTextView.text = nil
            let alert = UIAlertController.init(title: "输入文字", message: "文字不能为空", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            resultTextView.text = nil
            let recognizer = NLLanguageRecognizer()
            recognizer.processString(inputTextView.text)

            let hypotheses = recognizer.languageHypotheses(withMaximum: 2)
            let str = hypotheses.map { (lang, proba) -> String in
                let probStr = String.init(format: "%.2f", proba)
                return "\(lang.rawValue): probablity is \(probStr)  \n"
            }.joined()
            resultTextView.text = str
        }
    }


}
