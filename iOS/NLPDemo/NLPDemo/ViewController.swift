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

        // 识别语言
        let recognizer = NLLanguageRecognizer()
        recognizer.processString("困死啦睡觉去了")
        let lang = recognizer.dominantLanguage
        let hypotheses = recognizer.languageHypotheses(withMaximum: 2)
        print(lang!, hypotheses)
        

        // 分词
        let tokenizer = NLTokenizer.init(unit: .word)
        let str = "困死了，我去睡觉去了"
        let strRange = str.startIndex ..< str.endIndex
        tokenizer.string = str
        let tokenArray = tokenizer.tokens(for: strRange)
        print(tokenArray.map({str[$0]}))

        taggerNameTest()

        taggerDocDemo()
    }


    /// 不同的scheme， 不同的输出
    func taggerDocDemo() -> Void {
        let tagger = NLTagger.init(tagSchemes: [.lexicalClass, .language, .script])
        let str = "Überraschung"
        tagger.string = str
        let range = str.startIndex ..< str.endIndex
        print(tagger.tags(in: range, unit: .word, scheme: .lexicalClass))
        print(tagger.tags(in: range, unit: .word, scheme: .language))
        print(tagger.tags(in: range, unit: .word, scheme: .script))
    }

    func taggerNameTest() -> Void {
        let tagger = NLTagger.init(tagSchemes: [.nameType])
        let str = "Prince Harry and Meghan Markle had their wedding ceremony in Windsor"
        let strRange = str.startIndex ..< str.endIndex
        tagger.string = str
        tagger.setLanguage(.english, range: strRange)
        let tags = tagger.tags(in: strRange, unit: .word, scheme: .nameType, options: .omitWhitespace)
        tags.forEach { (tag, range) in
            print(tag, str[range])
        }
    }


}

