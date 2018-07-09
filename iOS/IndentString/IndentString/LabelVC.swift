//
//  LabelVC.swift
//  IndentString
//
//  Created by huahuahu on 2018/7/9.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class LabelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 500))
        view.addSubview(label)
        let image = UIImage.init(imageLiteralResourceName: "image")
        let imageview = UIImageView.init(image: image)
        
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.setParagraphStyle(.default)
        paragraphStyle.firstLineHeadIndent = imageview.frame.size.width + 10
        let attrStr = NSAttributedString.init(string: string1, attributes: [.paragraphStyle: paragraphStyle])
        label.addSubview(imageview)
        label.attributedText = attrStr
        label.numberOfLines = 0
        label.sizeToFit()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
