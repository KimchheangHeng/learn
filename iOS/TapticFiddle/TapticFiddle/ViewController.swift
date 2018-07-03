//
//  ViewController.swift
//  TapticFiddle
//
//  Created by huahuahu on 2018/7/2.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Basic Vibration (Supported by All iPhone Devices)
    @IBAction func basic(_ sender: Any) {
        let vibrate = SystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSoundWithCompletion(vibrate) {
            print("played")
        }
    }
    
    // Taptic Engine (iPhone 6S, 6S Plus, and above)
    @IBAction func TapticAction(_ sender: Any) {
        let btn = sender as! UIButton
        let soundId = SystemSoundID(btn.tag)
        AudioServicesPlaySystemSound(soundId)
    }
    
    //Haptic Feedback (iPhone 7, 7 Plus, and above)

    // MARK: UINotificationFeedbackGenerator
    func notify(_ type: UINotificationFeedbackType)  {
        let feedbackGenerator = UINotificationFeedbackGenerator.init()
        feedbackGenerator.prepare()
        feedbackGenerator.notificationOccurred(type)
    }
    
    @IBAction func succNotify(_ sender: Any) {
        notify(.success)
    }
    
    @IBAction func notifyWarning(_ sender: Any) {
        notify(.warning)
    }
    
    @IBAction func notifyError(_ sender: Any) {
        notify(.error)
    }
    
    // MARK: - UIImpactFeedbackGenerator
    func impact(_ style: UIImpactFeedbackStyle) {
        let impactFeedBackGenerator = UIImpactFeedbackGenerator.init()
        impactFeedBackGenerator.prepare()
        impactFeedBackGenerator.impactOccurred()
    }
    
    
    @IBAction func lightImpact(_ sender: Any) {
        impact(.light)
    }
    @IBAction func mediumImpact(_ sender: Any) {
        impact(.medium)
    }
    @IBAction func heavyImpact(_ sender: Any) {
        impact(.heavy)
    }
    
    // MARK: - UISelectionFeedbackGenerator
    
    @IBAction func didSelect(_ sender: Any) {
        let selectFeedbackGenerator = UISelectionFeedbackGenerator.init()
        selectFeedbackGenerator.prepare()
        selectFeedbackGenerator.selectionChanged()
    }
}

