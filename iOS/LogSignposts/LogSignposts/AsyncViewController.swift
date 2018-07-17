//
//  AsyncViewController.swift
//  LogSignposts
//
//  Created by huahuahu on 2018/7/17.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import os.signpost


class AsyncViewController: UIViewController {

    var log = OSLog.init(subsystem: "com.tiger.test", category: "async")
    var spidOut: OSSignpostID?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginAction(_ sender: Any) {
        // 会禁止 signpost
        log = .disabled
        os_log("begin async log", log: log, type: .default)

        let count = 3
        let group = DispatchGroup.init()
        if spidOut == nil {
            spidOut = OSSignpostID.init(log: log)
        }
        os_signpost(type: .begin, log: log, name: "out fetch", signpostID: spidOut!)
        
        for i in 0 ..< count {
            let istring = String.init(i)
            let spid = OSSignpostID.init(log: log, object: istring as AnyObject)
            os_signpost(type: .begin, log: log, name: "fetch", signpostID: spid, "startt")
            group.enter()
            
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: 0.2)
                let number: Double = 2.3 + Double(i)
                os_signpost(type: .end, log: self.log, name: "fetch", signpostID: spid, "%.2f, %{public}s", number, istring)
                os_log("async didd ", log: self.log, type: .default)
                print(spid)
                group.leave()
            }
        }
        
        group.wait()
        os_signpost(type: .end, log: log, name: "out fetch", signpostID: spidOut!)
        os_log("end async vlog", log: log, type: .default)

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
