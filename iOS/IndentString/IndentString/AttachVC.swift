//
//  AttachVC.swift
//  IndentString
//
//  Created by huahuahu on 2018/7/9.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class AttachVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 500))
        view.addSubview(label)
        let stringWithImage = NSMutableAttributedString.init()
        let image = UIImage.init(imageLiteralResourceName: "image")
        let attach = NSTextAttachment.init()
        attach.image = image
        stringWithImage.append(NSAttributedString.init(attachment: attach))
        stringWithImage.append(NSAttributedString.init(string: string1))
        label.attributedText = stringWithImage
        label.numberOfLines = 0
        // Do any additional setup after loading the view.
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
