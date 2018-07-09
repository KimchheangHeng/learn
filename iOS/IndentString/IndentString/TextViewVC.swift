//
//  TextViewVC.swift
//  IndentString
//
//  Created by huahuahu on 2018/7/9.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class TextViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textView = UITextView.init(frame: CGRect.init(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 500))
        view.addSubview(textView)
        let image = UIImage.init(imageLiteralResourceName: "image")
        let imageview = UIImageView.init(image: image)
        
        let path = UIBezierPath.init(rect: imageview.frame)
        textView.textContainer.exclusionPaths = [path]
        textView.addSubview(imageview)
        textView.text = string1
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
