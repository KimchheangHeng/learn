//
//  ViewController.swift
//  ByteDanceInterview
//
//  Created by huahuahu on 2017/10/15.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.Q1()
        for _ in 0...20 {
            self.Q3()
            print("------------")
        }
//        self.Q2()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func Q1() -> Void {
        DispatchQueue.main.async {
            DispatchQueue.main.async {
                sleep(2)
                print(1)
            }
            print(2)
            DispatchQueue.main.async {
                print(3)
            }
        }
        sleep(1)

    }
    
    func Q2() ->  Void{
        DispatchQueue.global().async {
            DispatchQueue.global().async {
//                print(4)
                sleep(2)
                print(1)
            }
            print(2)
            DispatchQueue.global().async {
                print(3)
            }
        }
        sleep(1)

    }
    
    func Q3() -> Void {
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        queue.addOperation {
            queue.addOperation {
                print("sleep1")
                sleep(1)
//                print(1)
            }
            print(2)
            queue.addOperation {
                print(3)
            }
        }
        print("sleep2")
        sleep(2)

    }

}


