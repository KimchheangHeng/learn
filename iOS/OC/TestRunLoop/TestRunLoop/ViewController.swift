//
//  ViewController.swift
//  TestRunLoop
//
//  Created by huahuahu on 2018/1/1.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import UIKit
import CoreFoundation.CFRunLoop

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //开启一个线程
        let thread = Thread.init(target: self, selector: #selector(self.entryFunc), object: nil)
        thread.name = "test thread"
        thread.start()
        print(Thread.current)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func entryFunc() -> Void {
        print("in entry")
        print(Thread.current)
        print("before run")
        //如果没有下面的run方法，定时器不会被启用，因为线程没有RunLoop，马上就消失了
        //所以定时器不会被调用
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (timer) in
            print("called")
        }
        //也可以通过添加一个port，作为source
//        RunLoop.current.add(Port.init(), forMode: .defaultRunLoopMode)
        
        //定义观察者
        self.addobser()
        //如果没有上面这个定时器，那么会马上返回，“after”会打印出来
        //线程也会马上消失
        RunLoop.current.run(until: Date.distantFuture)
        print("after")
        
    }
    
    func addobser() -> Void {
        let observer = CFRunLoopObserverCreateWithHandler(kCFAllocatorDefault,
                                                          CFRunLoopActivity.allActivities.rawValue,
                                                          true,
                                                          0,
                                                          { (observer: CFRunLoopObserver?, activity: CFRunLoopActivity) -> Void in
                                                            
                                                            /*
                                                             kCFRunLoopEntry = (1UL << 0),          进入工作
                                                             kCFRunLoopBeforeTimers = (1UL << 1),   即将处理Timers事件
                                                             kCFRunLoopBeforeSources = (1UL << 2),  即将处理Source事件
                                                             kCFRunLoopBeforeWaiting = (1UL << 5),  即将休眠
                                                             kCFRunLoopAfterWaiting = (1UL << 6),   被唤醒
                                                             kCFRunLoopExit = (1UL << 7),           退出RunLoop
                                                             kCFRunLoopAllActivities = 0x0FFFFFFFU  监听所有事件
                                                             */
                                                            print(activity)
                                                            print(Date.init(),terminator:"")
                                                            switch (activity) {
                                                            case CFRunLoopActivity.entry:
                                                                print("进入");
                                                                break;
                                                            case CFRunLoopActivity.beforeTimers:
                                                                print("即将处理Timer事件");
                                                                break;
                                                            case CFRunLoopActivity.beforeSources:
                                                                print("即将处理Source事件");
                                                                break;
                                                            case CFRunLoopActivity.beforeWaiting:
                                                                print("即将休眠");
                                                                break;
                                                            case CFRunLoopActivity.afterWaiting:
                                                                print("被唤醒");
                                                                break;
                                                            case CFRunLoopActivity.exit:
                                                                print("退出RunLoop");
                                                                break;
                                                            default:
                                                                break;
                                                            }
        });
        
        CFRunLoopAddObserver(RunLoop.current.getCFRunLoop(), observer, CFRunLoopMode.commonModes)
    }


}

