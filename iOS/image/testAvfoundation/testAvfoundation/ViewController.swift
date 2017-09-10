//
//  ViewController.swift
//  testAvfoundation
//
//  Created by huahuahu on 2017/9/2.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit
import AVFoundation
import GLKit

class ViewController: UIViewController ,AVCaptureVideoDataOutputSampleBufferDelegate,AVCaptureMetadataOutputObjectsDelegate{
    
    var glContext:EAGLContext?
    var glView:GLKView?
    var ciContext:CIContext?
    var session:AVCaptureSession? //这个session 一定要一直存在
    var slider:UISlider?
    var currentCamera:AVCaptureDevice?
    var previewLayer:AVCaptureVideoPreviewLayer?
    var faceBound:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.slider = UISlider.init(frame: CGRect.init(x: 0, y: 60, width: self.view.bounds.size.width, height: 20))
        self.view.addSubview(self.slider!)
        self.slider?.backgroundColor = UIColor.red
        self.slider?.tintColor = UIColor.green
//        self.slider?.minimumValue = 0
//        self.slider?.maximumValue = 1
        self.slider?.isContinuous = true
        self.slider?.addTarget(self, action: #selector(ViewController.sliderChange), for: .valueChanged)
        
    }
    
    @objc func sliderChange() -> Void {
//        // 设置镜片的位置，从远到近。0-1.0之间,并不能放大缩小
//        let lensPosition:Float = self.slider!.value
//
//        print("lensPositon is \(lensPosition)")
//        try! self.currentCamera?.lockForConfiguration()
//        currentCamera?.setFocusModeLocked(lensPosition: lensPosition, completionHandler: { (timea) in
//            print("first time is \(timea) ")
//        })
//        currentCamera?.unlockForConfiguration()
        
        //设置曝光度
        let exposureBias:Float = self.slider!.value
        
        print("exposureBias is \(exposureBias)")
        try! self.currentCamera?.lockForConfiguration()
        currentCamera?.setExposureTargetBias(exposureBias, completionHandler: { (time1) in
            print("time1 is \(time1)")
        })
        currentCamera?.unlockForConfiguration()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
//        self.testAVFoundation()
//        self.testFaceDection()
        self.testStillCamera()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testStillCamera() -> Void {
        self.session = AVCaptureSession()
        
        //找到AVCaptureDevice
        var backCameraDevice:AVCaptureDevice?
        var frontCameraDevice:AVCaptureDevice?
        
        let availableCameraDevices = AVCaptureDevice.devices(for: AVMediaType.video)
        for device in availableCameraDevices as [AVCaptureDevice] {
            if device.position == .back {
                backCameraDevice = device
            }
            else if device.position == .front {
                frontCameraDevice = device
            }
        }
        assert(backCameraDevice != nil && frontCameraDevice != nil)
        
        //寻求用户授权相机使用
        let authorizationStatus = AVCaptureDevice.authorizationStatus(for: .video)
        switch authorizationStatus {
        case .authorized:
            print("authorized")
        case .denied,.restricted:
            return
        case.notDetermined:
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted) in
                if granted{
                    print("authorized after request")
                }
                else
                {
                    return
                }
            })
        }
        
        //通过 try? 把错误转化为可选值。如果发送错误，那么结果是 nil。
        // 这句话触发弹框，要求相机权限。用户授权之前，统统是黑色的图像。应该在之前就要求相机
        let deviceInput = try? AVCaptureDeviceInput.init(device: backCameraDevice!)
        assert(deviceInput != nil)
        
        if self.session!.canAddInput(deviceInput!)
        {
            self.session!.addInput(deviceInput!)
        }
        
        let stillCameraOutput = AVCaptureStillImageOutput()
        if self.session!.canAddOutput(stillCameraOutput) {
            self.session!.addOutput(stillCameraOutput)
        }
        
        session?.startRunning()
        let imageView = UIImageView.init(frame: self.view.bounds)
        self.view.addSubview(imageView)
        
        let connection = stillCameraOutput.connection(with: .video)!
        connection.videoOrientation = AVCaptureVideoOrientation.init(rawValue: UIDevice.current.orientation.rawValue)!
        
        let settings = [-1.0, 0.0, 1.0].map {
            (bias:Float) -> AVCaptureAutoExposureBracketedStillImageSettings in
            
            AVCaptureAutoExposureBracketedStillImageSettings.autoExposureSettings(exposureTargetBias: bias)
        }
        
        var counter = settings.count
        
        
        stillCameraOutput.captureStillImageBracketAsynchronously(from: connection, withSettingsArray: settings) {
            (buffer, settings, error) -> Void in
            counter = counter - 1
            print("\(counter) remains")
            
            let imageData = AVCaptureStillImageOutput.jpegStillImageNSDataRepresentation(buffer!)
            let metadata:NSDictionary = CMCopyDictionaryOfAttachments(nil, buffer!, CMAttachmentMode(kCMAttachmentMode_ShouldPropagate))!
            if let image = UIImage(data: imageData!) {
                imageView.image = image
            }
        }

        
//        stillCameraOutput.captureStillImageAsynchronously(from: connection) { (buffer, error) in
//            if error == nil
//            {
//                let imageData = AVCaptureStillImageOutput.jpegStillImageNSDataRepresentation(buffer!)
//                let metadata:NSDictionary = CMCopyDictionaryOfAttachments(nil, buffer!, CMAttachmentMode(kCMAttachmentMode_ShouldPropagate))!
//                if let image = UIImage(data: imageData!) {
//                    imageView.image = image
//                }
//            }
//            else
//            {
//
//            }
//        }
        
    }
    func testFaceDection() -> Void {
        
        self.session = AVCaptureSession()
        
        //找到AVCaptureDevice
        var backCameraDevice:AVCaptureDevice?
        var frontCameraDevice:AVCaptureDevice?
        
        let availableCameraDevices = AVCaptureDevice.devices(for: AVMediaType.video)
        for device in availableCameraDevices as [AVCaptureDevice] {
            if device.position == .back {
                backCameraDevice = device
            }
            else if device.position == .front {
                frontCameraDevice = device
            }
        }
        assert(backCameraDevice != nil && frontCameraDevice != nil)
        
        //寻求用户授权相机使用
        let authorizationStatus = AVCaptureDevice.authorizationStatus(for: .video)
        switch authorizationStatus {
        case .authorized:
            print("authorized")
        case .denied,.restricted:
            return
        case.notDetermined:
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted) in
                if granted{
                    print("authorized after request")
                }
                else
                {
                    return
                }
            })
        }
        
        //通过 try? 把错误转化为可选值。如果发送错误，那么结果是 nil。
        // 这句话触发弹框，要求相机权限。用户授权之前，统统是黑色的图像。应该在之前就要求相机
        let deviceInput = try? AVCaptureDeviceInput.init(device: backCameraDevice!)
        assert(deviceInput != nil)
        
        if self.session!.canAddInput(deviceInput!)
        {
            self.session!.addInput(deviceInput!)
        }
        
        let preview = AVCaptureVideoPreviewLayer.init(session: session!)
        preview.frame = self.view.bounds
        self.view.layer.addSublayer(preview)
        self.previewLayer = preview
        
        self.currentCamera = deviceInput?.device
        let metaDateOutput = AVCaptureMetadataOutput()
        metaDateOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.init(label: "faceDection"))
        if (self.session?.canAddOutput(metaDateOutput))! {
            self.session?.addOutput(metaDateOutput)
        }
        metaDateOutput.metadataObjectTypes = [.face]
        
        session?.startRunning()

    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        for metadataObject in metadataObjects
        {
            if metadataObject.type == .face
            {
                let metadataObject1 = previewLayer?.transformedMetadataObject(for: metadataObject)
                if  metadataObject1 != nil
                {
                    DispatchQueue.main.async {
                        self.faceBound?.removeFromSuperview()
                        self.faceBound = UIView.init(frame: (metadataObject1?.bounds)!)
                        self.faceBound?.layer.borderColor = UIColor.red.cgColor
                        self.faceBound?.layer.borderWidth = 3
                        
                        self.view.addSubview(self.faceBound!)
                    }
                    
                }
                
            }
        }
    }
    
    func testAVFoundation() -> Void {
        //新建一个session
        self.session = AVCaptureSession()
        
        //找到AVCaptureDevice
        var backCameraDevice:AVCaptureDevice?
        var frontCameraDevice:AVCaptureDevice?
        
        let availableCameraDevices = AVCaptureDevice.devices(for: AVMediaType.video)
        for device in availableCameraDevices as [AVCaptureDevice] {
            if device.position == .back {
                backCameraDevice = device
            }
            else if device.position == .front {
                frontCameraDevice = device
            }
        }
        assert(backCameraDevice != nil && frontCameraDevice != nil)
        
        //寻求用户授权相机使用
        let authorizationStatus = AVCaptureDevice.authorizationStatus(for: .video)
        switch authorizationStatus {
        case .authorized:
            print("authorized")
        case .denied,.restricted:
            return
        case.notDetermined:
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted) in
                if granted{
                    print("authorized after request")
                }
                else
                {
                    return
                }
            })
        }
        
        //通过 try? 把错误转化为可选值。如果发送错误，那么结果是 nil。
        // 这句话触发弹框，要求相机权限。用户授权之前，统统是黑色的图像。应该在之前就要求相机
        let deviceInput = try? AVCaptureDeviceInput.init(device: backCameraDevice!)
        assert(deviceInput != nil)
        
        if self.session!.canAddInput(deviceInput!)
        {
            self.session!.addInput(deviceInput!)
        }
        
        //方法1：使用preview
//        let preview = AVCaptureVideoPreviewLayer.init(session: session)
//        preview.frame = self.view.bounds
//        self.view.layer.addSublayer(preview)
//        session.startRunning()

        //方法2：从output里获取数据，使用OpenGL渲染
        //如果需要对数据做处理（比如美颜），可以这么做
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue.init(label: "sample buffer delegate"))
        if self.session!.canAddOutput(videoOutput) {
            self.session!.addOutput(videoOutput)
        }
        
        self.glContext = EAGLContext(api: .openGLES2)!
        self.glView = GLKView.init(frame: self.view.frame, context: self.glContext!)
        self.glView?.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
        self.glView?.frame = self.view.bounds
        self.ciContext = CIContext.init(eaglContext: self.glContext!)
        self.view.insertSubview(self.glView!, belowSubview: self.slider!)
        
        
        //设置相机
//        session?.sessionPreset = .photo
        self.currentCamera = deviceInput?.device
        
        //设置焦距
        //Locked: means the lens is at a fixed position.
        //AutoFocus: means setting this will cause the camera to focus once automatically, and then return back to Locked.
        //ContinuousAutoFocus: means the camera will automatically refocus on the center of the frame when the scene changes.
//        let focueMode = AVCaptureDevice.FocusMode.continuousAutoFocus
//        if currentCamera!.isFocusModeSupported(focueMode) {
//            try! currentCamera?.lockForConfiguration()
//            currentCamera?.focusMode = focueMode
//            //设置最清晰的区域
////            currentCamera?.focusPointOfInterest = CGPoint.init(x: 0.9, y: 0.9)
//            currentCamera?.unlockForConfiguration()
//        }
        
//        // 设置镜片的位置，从远到近。0-1.0之间，并不能放大缩小
//        let lensPosition:Float = 0.9
//
//        try! currentCamera?.lockForConfiguration()
//        currentCamera?.setFocusModeLocked(lensPosition: lensPosition, completionHandler: { (timea) in
//            print("first time is \(timea) ")
//        })
//        currentCamera?.unlockForConfiguration()
        
        //设置曝光量
        self.slider?.minimumValue = self.currentCamera!.minExposureTargetBias
        self.slider?.maximumValue = self.currentCamera!.maxExposureTargetBias
        
//        //手动曝光，设置iso和曝光时间
//        let activeFormat = self.currentCamera?.activeFormat
//        let duration = self.currentCamera?.exposureDuration
//        // a value between activeFormat.minISO and activeFormat.maxISO or AVCaptureISOCurrent for no change
//        let iso = activeFormat?.maxISO
//
//        try! currentCamera?.lockForConfiguration()
//        self.currentCamera?.setExposureModeCustom(duration: duration!, iso: iso!, completionHandler: { (time) in
//            print("customTime");
//        })
//                currentCamera?.unlockForConfiguration()

        
        let incandescentLightCompensation = 3_000
        let tint = (self.currentCamera?.maxWhiteBalanceGain)!/2
//        let tint =
        //temperature 温度，典型的色温值在 2000-3000K (类似蜡烛或灯泡的暖光源) 到 8000K (纯净的蓝色天空) 之间
        //tint : 色彩，偏绿到偏品红
        let temperatureAndTintValues = AVCaptureDevice.WhiteBalanceTemperatureAndTintValues(temperature: Float(incandescentLightCompensation), tint: Float(tint))
        let deviceGains = frontCameraDevice?.deviceWhiteBalanceGains(for: temperatureAndTintValues)
        try! currentCamera?.lockForConfiguration()
        self.currentCamera?.setWhiteBalanceModeLocked(with: deviceGains!) {
            (timestamp:CMTime) -> Void in
        }
        currentCamera?.unlockForConfiguration()
        
        self.session?.startRunning()
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer)!
        let image = CIImage.init(cvImageBuffer: pixelBuffer)
        if glContext != EAGLContext.current() {
            EAGLContext.setCurrent(glContext)
        }
        glView?.bindDrawable()
        ciContext?.draw(image, in: image.extent, from: image.extent)
        glView?.display()

    }
    
    func captureOutput(_ output: AVCaptureOutput, didDrop sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        print("dropped!!")
    }
}

