//
//  ViewController.swift
//  ImageDownSampleDemo
//
//  Created by huahuahu on 2018/7/11.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var imageView: UIImageView!
    var isSample: Bool = false
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        self.title = "image"
        let imageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 300, height: 200))
        imageView.center = view.center
        view.addSubview(imageView)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = Bundle.main.url(forResource: "1", withExtension: "jpg")
        if isSample {
            imageView.image = downsample(imageAt: url!, to: CGSize.init(width: 300, height: 200), scale: traitCollection.displayScale)
            
        } else {
            let data = try! Data.init(contentsOf: url!)
            imageView.image = UIImage.init(data: data)
        }
    }


    func downsample(imageAt imageURL: URL, to pointSize: CGSize, scale: CGFloat) -> UIImage {
        
        //生成CGImageSourceRef 时，不需要先解码。
        let imageSourceOptions = [kCGImageSourceShouldCache: false] as CFDictionary
        let imageSource = CGImageSourceCreateWithURL(imageURL as CFURL, imageSourceOptions)!
        let maxDimensionInPixels = max(pointSize.width, pointSize.height) * scale
        
        //kCGImageSourceShouldCacheImmediately
        //在创建Thumbnail时直接解码，这样就把解码的时机控制在这个downsample的函数内
        let downsampleOptions = [kCGImageSourceCreateThumbnailFromImageAlways: true,
                                 kCGImageSourceShouldCacheImmediately: true,
                                 kCGImageSourceCreateThumbnailWithTransform: true,
                                 kCGImageSourceThumbnailMaxPixelSize: maxDimensionInPixels] as CFDictionary
        //生成
        let downsampledImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, downsampleOptions)!
        return UIImage(cgImage: downsampledImage)
    }
}

