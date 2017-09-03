//
//  ViewController.swift
//  VideoCapture
//
//  Created by huahuahu on 2017/9/3.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit
import AVFoundation
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate,AVCaptureFileOutputRecordingDelegate{

    var captureSession:AVCaptureSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.useUIImagePicker()
        self.testAVFoundation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func useUIImagePicker() -> Void {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else
        {
            return
        }
        let availableType = UIImagePickerController.availableMediaTypes(for: .camera)
        guard availableType!.contains(kUTTypeMovie as String) else
        {
            return
        }
        
        let vc = UIImagePickerController.init()
        vc.sourceType = .camera
        vc.mediaTypes = [kUTTypeMovie as String]
        vc.delegate = self
        //设置摄像头
        vc.cameraDevice = .rear
        if UIImagePickerController.isCameraDeviceAvailable(.front)
        {
            vc.cameraDevice = .front
        }
        // 设置格式
        vc.videoQuality = .typeMedium
        //是否展示系统自定义的控件
//        vc.showsCameraControls = false
        //自定义的UI
//        vc.cameraOverlayView =
        //起始和停止录制视频
//        vc.stopVideoCapture()
//        vc.startVideoCapture()
        
        self.present(vc, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: false, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    
    }
    
    func testAVFoundation() -> Void {
        self.askForAuthorize()
        self.captureSession = AVCaptureSession.init()
        //视频输入
        let videoDeviceInput = try! AVCaptureDeviceInput.init(device: AVCaptureDevice.default(for: AVMediaType.video)!)
        self.captureSession.addInput(videoDeviceInput)
        //声音输入
        let microInput = try! AVCaptureDeviceInput.init(device: AVCaptureDevice.default(for: AVMediaType.audio)!)
        self.captureSession.addInput(microInput)
        
        
        //设置输入的分辨率 start
        let videoDeivce = videoDeviceInput.device
        try! videoDeivce.lockForConfiguration()
        //设置帧率
        let frameRange = videoDeivce.activeFormat.videoSupportedFrameRateRanges
        let frameDurarion = CMTimeMake(1, 10)
        var supportedFrame = true
//        for item in frameRange {
//            if (frameDurarion >= item.minFrameRate) && (frameDurarion <= item.maxFrameRate)
//            {
//                supportedFrame = true
//            }
//        }
        if supportedFrame {
            videoDeivce.activeVideoMinFrameDuration = frameDurarion
            videoDeivce.activeVideoMaxFrameDuration = frameDurarion
        }
        
        // HDR
//        videoDeivce.isVideoHDREnabled = false
//        //光学防抖
//        if videoDeivce.activeFormat.isVideoStabilizationModeSupported(.cinematic) {
//
//        }
        videoDeivce.unlockForConfiguration()
        //设置输入的分辨率 end
        
        //设置麦克风
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try! audioSession.setActive(true)
        
        let microInputs = audioSession.availableInputs!
        var builtInMic:AVAudioSessionPortDescription?
        for port in microInputs {
            if port.portType == AVAudioSessionPortBuiltInMic
            {
                builtInMic = port
                break
            }
        }
        
        for source in builtInMic!.dataSources! {
            if source.orientation == AVAudioSessionOrientationFront
            {
               try! builtInMic?.setPreferredDataSource(source)
               try! audioSession.setPreferredInput(builtInMic)
                break
            }
        }
        
        
        //输出
        let videoOutput = AVCaptureMovieFileOutput.init()
        self.captureSession.addOutput(videoOutput)
        //提供不同分辨率的输出
        //        captureSession.sesposionPreset = AVCaptureSession.Preset.hd4K3840x2160

        captureSession.startRunning()
        
        let filePath = NSHomeDirectory().appending("/Documents/output1.mov")
        try? FileManager.default.removeItem(atPath: filePath)
        let url = NSURL.fileURL(withPath: filePath)
//        captureSession.startRunning()
        DispatchQueue.main.async {
            videoOutput.startRecording(to: url, recordingDelegate: self)

        }

        //预览
        let previewLayer = AVCaptureVideoPreviewLayer.init(session: captureSession)
        previewLayer.frame = self.view.bounds
        self.view.layer.addSublayer(previewLayer)
    }
    
    func askForAuthorize() -> Void {
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
        
        //麦克风使用
        let authorizeMicro = AVCaptureDevice.authorizationStatus(for: .audio)
        switch authorizeMicro {
        case .authorized:
            print("micro authorized")
        case .denied,.restricted:
            return
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .audio, completionHandler: { (granted) in
                if granted == false
                {
                    return
                }
            })
        }
        
    }

    func fileOutput(_ output: AVCaptureFileOutput, didStartRecordingTo fileURL: URL, from connections: [AVCaptureConnection]) {
        print("start")
        let connection = connections.first!
        connection.preferredVideoStabilizationMode = .cinematic
        
    }
    
    func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?) {
        print("finish")
    }
    
}

