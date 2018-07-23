//
//  SubViewController.swift
//  AdaptiveLayout
//
//  Created by huahuahu on 2018/7/22.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    let textView = UITextView.init()
    let text = """
之前过年的时候，我奶奶特地带着几个孙子走亲访友（我奶奶四个儿子，人手很充足），其实醉翁之意不在酒，她主要是骗二堂哥去相亲的。
    
    首先是一辆豪车停在了姑娘家门口，四堂哥从驾驶座走下来。
    
    姑娘父母眼睛一亮，侧头跟姑娘说了几句，但是姑娘看清四堂哥后又有些犹豫，因为四堂哥不高不帅。
    
    接着，副驾驶下来了五堂哥，那年五堂哥还是个大三学生，身高 175，穿了鞋 177，身材匀称，相貌有点小帅，戴着眼镜，头上还打着发蜡，风骚地穿着风衣。
    
    姑娘这次脸一红，点了点头，有继续发展的意思。
    
    然后后面车门打开，我弟也下来了，身高 185，人高马大的。
    
    姑娘也表示可接受。
    
    最后我奶奶下来了。
    
    她们以为我奶奶是直接带了几个孙子任她挑选，很热情地招待，一边嘘寒问暖：今年几岁啦？在哪里工作啦？
    
    吓得他们三个连忙摆手：不不不，不是我们相亲。
    
    然后又一辆车停在门口。
    
    二堂哥和他的父母，以及介绍人下来了。
    
    情况就尴尬了。
    
    我二堂哥当年的条件是，年龄 29，身高不到 170，身材瘦小，相貌不丑不帅，开个小店，没什么钱，各方面条件都不出众，特别是在几个堂弟的衬托下。
    
    姑娘看到二堂哥后，大失所望，表示没看上。
    
    后来姑娘的父母打听了五堂哥，然而五堂哥在北京有女朋友。又打听了四堂哥，可是四堂哥家里看不上她。最后打听了我弟，谢谢，我弟还小，还没到领证年龄呢。

  
    首先是一辆豪车停在了姑娘家门口，四堂哥从驾驶座走下来。
    
    姑娘父母眼睛一亮，侧头跟姑娘说了几句，但是姑娘看清四堂哥后又有些犹豫，因为四堂哥不高不帅。
    
    接着，副驾驶下来了五堂哥，那年五堂哥还是个大三学生，身高 175，穿了鞋 177，身材匀称，相貌有点小帅，戴着眼镜，头上还打着发蜡，风骚地穿着风衣。
    
    姑娘这次脸一红，点了点头，有继续发展的意思。
    
    然后后面车门打开，我弟也下来了，身高 185，人高马大的。
    
    姑娘也表示可接受。
    
    最后我奶奶下来了。
    
    她们以为我奶奶是直接带了几个孙子任她挑选，很热情地招待，一边嘘寒问暖：今年几岁啦？在哪里工作啦？
    
    吓得他们三个连忙摆手：不不不，不是我们相亲。
    
    然后又一辆车停在门口。
    
    二堂哥和他的父母，以及介绍人下来了。
    
    情况就尴尬了。
    
    我二堂哥当年的条件是，年龄 29，身高不到 170，身材瘦小，相貌不丑不帅，开个小店，没什么钱，各方面条件都不出众，特别是在几个堂弟的衬托下。
    
    姑娘看到二堂哥后，大失所望，表示没看上。
    
    后来姑娘的父母打听了五堂哥，然而五堂哥在北京有女朋友。又打听了四堂哥，可是四堂哥家里看不上她。最后打听了我弟，谢谢，我弟还小，还没到领证年龄呢
"""
    let textSubview = UIView.init()
    var reallyHide = false
    override func viewDidLoad() {
        super.viewDidLoad()
        textSubview.backgroundColor = UIColor.blue
        textSubview.frame = CGRect.init(x: 30, y: 0, width: 40, height: 100)
        textView.addSubview(textSubview)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            print(self.textSubview.safeAreaInsets)
        }

        // Do any additional setup after loading the view.
        view.addSubview(textView)
        textView.text = text
//        textView.text = "short string short stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort stringshort string"
        let constraints = [
        textView.topAnchor.constraint(equalTo: view.topAnchor),
        textView.rightAnchor.constraint(equalTo: view.rightAnchor),
        textView.leftAnchor.constraint(equalTo: view.leftAnchor),
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor)]
        NSLayoutConstraint.activate(constraints)
        textView.translatesAutoresizingMaskIntoConstraints = false
        if reallyHide {
            self.navigationController?.setNavigationBarHidden(true, animated: true)
        }
        
        // always 上下左右的 safeArea 都会被当作 contentinset, 表现正常
        // never 上下左右的 safeArea 都不会被当作 contentinset，上下会被 bar 吞掉。左右会处于safeArea 之外
        // scrollableAxes 上下可以滚动，上下的 safeArea 会被当作 contentInset，表现正常。左右会处于 safeArea 之外
         //automatic 和 scrollableAxes 表现一致。在不可滚动时，automatic会上下缩进，scrollableAxes不会，因为不scrollable了
        
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.backgroundColor = .yellow
        textView.delegate = self
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
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

extension SubViewController: UITextViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // textSubview 不会收到 textView 传递来的 safeArea
        print(textSubview.safeAreaInsets)
        print("textview: \(textView.safeAreaInsets)")
//        print(scrollView)
    }
}
