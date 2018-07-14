//
//  TokenViewController.swift
//  NLPDemo
//
//  Created by huahuahu on 2018/7/14.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import NaturalLanguage

class TokenViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var inputTextView: UITextView!
    let cellId = "cellid"
    var labels: [UILabel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func beginToken(_ sender: Any) {
        inputTextView.resignFirstResponder()
        if inputTextView.text.isEmpty {
            let alert = UIAlertController.init(title: "输入文字", message: "文字不能为空", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            labels  = tokenStr(inputTextView.text)
            collectionView.reloadData()
        }

    }

    func tokenStr(_ str: String) -> [UILabel] {
        // 分词
        let tokenizer = NLTokenizer.init(unit: .word)
        let strRange = str.startIndex ..< str.endIndex
        tokenizer.string = str
        let tokenArray = tokenizer.tokens(for: strRange)
        return tokenArray.map {
            let label = UILabel.init()
            label.text = String(str[$0])
            label.sizeToFit()
            return label
        }
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        let label = labels[indexPath.row]
        cell.contentView.subviews.forEach { (subView) in
            subView.removeFromSuperview()
        }

        cell.contentView.addSubview(label)
        cell.contentView.backgroundColor = UIColor.yellow
        cell.contentView.layer.cornerRadius = 5
        cell.contentView.layer.masksToBounds = true
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor.brown.cgColor
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let label = labels[indexPath.row]
        return label.bounds.size
    }


}
