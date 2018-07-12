//
//  ImageResizeVC.swift
//  ImageDownSampleDemo
//
//  Created by huahuahu on 2018/7/12.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ImageResizeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "tile image"
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
        let rawImageView = UIImageView.init(image: UIImage.init(named: "icon"))
        rawImageView.frame.origin = CGPoint.init(x: view.bounds.width/2 - rawImageView.bounds.width / 2, y: 200)
        view.addSubview(rawImageView)
        
        // 使用这个，来替换 patternColor，因为 patternColor 会有 backing store
        let tiledImageView = UIImageView.init(frame: CGRect.init(x: 20, y: rawImageView.frame.maxY + 30, width: 300, height: 300))
        // 只用中间部分会被tile
        let inset = UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20)
        let image = UIImage.init(named: "icon")?.resizableImage(withCapInsets: inset , resizingMode: .tile).withRenderingMode(.alwaysTemplate)
        // alwaysTemplate 也可以节省内存，不产生 backing store
        tiledImageView.tintColor = UIColor.blue
        tiledImageView.image = image
        view.addSubview(tiledImageView)
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
