//
//  ViewController.swift
//  TestTranslucentGlass
//
//  Created by huahuahu on 2018/7/2.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textview.text = """
北京时间 2018 年 7 月 3 号，湖密、火密、詹密、雷密刺密达成和解共识，共识如下: 1. 各队球迷冰释前嫌，球迷不要相互攻击、讽刺 2. 各队始终坚定以击败勇士为目标的信念 3. 一支球队与勇士有比赛其他球迷相互支援 4. 不强求湖、詹、火、雷、刺全体球迷都互粉，但要做到互相尊重 5. 以上各队相互比赛时友谊第一，比赛第二，不得侮辱和谩骂 以上就是所达成的共识，简称 “七三共识
        CocoaPods manages library dependencies for your Xcode projects.
        
        The dependencies for your projects are specified in a single text file called a Podfile. CocoaPods will resolve dependencies between libraries, fetch the resulting source code, then link it together in an Xcode workspace to build your project.
        
        Ultimately the goal is to improve discoverability of, and engagement in, third party open-source libraries by creating a more centralised ecosystem.
        
        If you do not want to grant RubyGems admin privileges for this process, you can tell RubyGems to install into your user directory by passing either the --user-install flag to gem install or by configuring the RubyGems environment. The latter is in our opinion the best solution. To do this, create or edit the .profile file in your home directory and add or amend it to include these lines:
        
        Creating your own CocoaPod is fairly straight forward. If you already have a separate component, you're most of the way there. This guide is an overview to the entire process, with the other guides in this section serving as more of a deep-dive for more advanced users.
        
        We recommend letting CocoaPods do the hard work here. Running pod lib create [pod name] will set you up with a well thought out library structure allowing you to easily include your files and get started quickly, we have a guide for this. If you'd like an up-to-date walkthrough of the whole process through to pushing to trunk, check out this 3rd party tutorial from tutsplus.
        
        <The Pod Files
        There are only a few differences between a CocoaPod and a generic open source library. The most important ones, aside from the actual source, are the .podspec and LICENSE. We do not accept libraries into the trunk without a code license. For information on what license to choose, we suggest reading this article on CodingHorror or tl;dr Legal.
        
        <Development

"""
        // Do any additional setup after loading the view, typically from a nib.
        let width = UIScreen.main.bounds.size.width
        addEffect(.light, frame: CGRect.init(x: 0, y: 100, width: width, height: 40))
        addEffect(.dark, frame: CGRect.init(x: 0, y: 150, width: width, height: 40))
        addEffect(.extraLight, frame: CGRect.init(x: 0, y: 200, width: width, height: 40))
        addEffect(.regular, frame: CGRect.init(x: 0, y: 250, width: width, height: 40))
        addEffect(.prominent, frame: CGRect.init(x: 0, y: 300, width: width, height: 40))
        
        
        var frame = CGRect.init(x: 0, y: 450, width: width, height: 40)
        addVibrancyEffect(.dark,vibrancyEffect: .dark, frame: CGRect.init(x: 0, y: 400, width: width, height: 40))
//        addVibrancyEffect(.dark,vibrancyEffect: .light, frame: frame)
        addVibrancyEffect(.light,vibrancyEffect: .light, frame: CGRect.init(x: 0, y: 350, width: width, height: 40))
//        frame = frame.offsetBy(dx: 0, dy: 50)
//        addEffect(.dark, frame: frame)
        
//        addVibrancyEffect(.dark,vibrancyEffect: .light, frame: frame)
//        frame = frame.offsetBy(dx: 0, dy: 50)
        addVibrancyEffect(.extraLight, vibrancyEffect: .extraLight, frame: frame)
        
        frame = frame.offsetBy(dx: 0, dy: 50)
        addVibrancyEffect(.regular, vibrancyEffect: .regular, frame: frame)

        frame = frame.offsetBy(dx: 0, dy: 50)
        addVibrancyEffect(.prominent, vibrancyEffect: .prominent, frame: frame)

    }
    
    func addEffect(_ style: UIBlurEffectStyle, frame: CGRect)  {
        let effect = UIBlurEffect.init(style: style)
        let effectView = UIVisualEffectView.init(effect: effect)
        effectView.frame = frame
        view.addSubview(effectView)
        let label = UILabel.init(frame: effectView.bounds)
        label.text  = "dfa 大发的啥饭"
        effectView.contentView.addSubview(label)

    }
    
    // 必须用同一个effect来配置blurview 和 vibrancyView
    func addVibrancyEffect(_ style: UIBlurEffectStyle, vibrancyEffect: UIBlurEffectStyle,frame: CGRect) -> Void {
        let blurEffect = UIBlurEffect.init(style: style)
        let blurView = UIVisualEffectView.init(effect: blurEffect)
        blurView.frame = frame
        view.addSubview(blurView)
        
        let effect = UIVibrancyEffect.init(blurEffect: blurEffect)
        let vibrancyView = UIVisualEffectView.init(effect: effect)
        vibrancyView.frame = blurView.bounds
        blurView.contentView.addSubview(vibrancyView)
        
        let label = UILabel.init(frame: vibrancyView.bounds)
        
        label.text  = "dfa 大发的啥饭 \(style.rawValue)"
        vibrancyView.contentView.addSubview(label)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

