//
//  ViewController.swift
//  testCoreImage
//
//  Created by huahuahu on 2017/9/2.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageView:UIImageView!
    var rawImage:UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView = UIImageView.init(frame: self.view.bounds)
        self.rawImage = UIImage.init(named: "girl")
        self.imageView.image = self.rawImage
        self.imageView.contentMode = .scaleAspectFit
        self.view.addSubview(self.imageView)
        // Do any additional setup after loading the view, typically from a nib.
        //查询所有滤镜名称
//        let filterNames = CIFilter.filterNames(inCategory: kCICategoryBuiltIn)
//        print(filterNames)
//
//        //根据滤镜名称创建滤波器
//        let blurFilter = CIFilter.init(name:"CIGaussianBlur")!
//        blurFilter.setValue(10.0, forKey:"inputRadius")
        
        //输入
//        blurFilter.inputKeys
        //输出
//        blurFilter.outputKeys
//        参数，属性
//        blurFilter.attributes
        self.testCIFilter()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testCIFilter() -> Void {
        
        //1.创建ciimage
        let inputImage = CIImage.init(image: self.rawImage)
        
        //2.构建滤镜图表,把两个滤波器连接起来
        let sepiaColor = CIColor(red: 0.76, green: 0.65, blue: 0.54)
        let monochromeFilter = CIFilter(name: "CIColorMonochrome",
                                        withInputParameters: ["inputColor" : sepiaColor, "inputIntensity" : 1.0])!
        monochromeFilter.setValue(inputImage, forKey: "inputImage")
        
        let vignetteFilter = CIFilter(name: "CIVignette",
                                      withInputParameters: ["inputRadius" : 1.75, "inputIntensity" : 1.0])!
        vignetteFilter.setValue(monochromeFilter.outputImage, forKey: "inputImage")
        
        let outputImage = vignetteFilter.outputImage
        
        //3.获取图像
        //创建上下文，可以用GPU提高性能
        let ciContext = CIContext(options: nil)
        //第二个参数是input，因为有时候经过滤镜后的图像大小会变化
        let cgImage = ciContext.createCGImage(outputImage!, from: inputImage!.extent)
        let imageout = UIImage.init(cgImage: cgImage!)
        self.imageView.image = imageout
        
        //GPU模式,还没有调通
//        let eaglContext = EAGLContext(api: .openGLES2)!
//        let ciContext = CIContext.init(eaglContext: eaglContext)
//        ciContext.draw(outputImage!, in: inputImage!.extent, from: inputImage!.extent)
//        self.imageView.image = UIImage.init(cgImage: outputImage!)



    }
    
    

}

