//
//  ViewController.swift
//  NLPDemo
//
//  Created by huahuahu on 2018/7/13.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

import NaturalLanguage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let recognizer = NLLanguageRecognizer()
        
        recognizer.processString("困死啦睡觉去了")
        
        let lang = recognizer.dominantLanguage
        
        let hypotheses = recognizer.languageHypotheses(withMaximum: 2)
        print(lang!, hypotheses)
        
        
        let tokenizer = NLTokenizer.init(unit: .word)
        let str = "困死了，我去睡觉去了"
        let strRange = str.startIndex ..< str.endIndex
        tokenizer.string = str
        let tokenArray = tokenizer.tokens(for: strRange)
        print(tokenArray.map({str[$0]}))

    }


}

