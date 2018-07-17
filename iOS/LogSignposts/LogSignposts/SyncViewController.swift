//
//  SyncViewController.swift
//  LogSignposts
//
//  Created by huahuahu on 2018/7/17.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import os.signpost

class SyncViewController: UIViewController {

    let log = OSLog.init(subsystem: "com.tiger.test", category: "sync")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sync(_ sender: Any) {
        os_log("beginlog", log: log, type: .default)
        let count = 3
        os_signpost(type: .begin, log: log, name: "out fetch", "start")
        for _ in 0 ..< count {
            os_signpost(type: .begin, log: log, name: "fetch")
            Thread.sleep(forTimeInterval: 0.2)
            os_signpost(type: .end, log: log, name: "fetch")
        }
        os_signpost(type: .end, log: log, name: "out fetch", "end")
        os_log("endlog", log: log, type: .default)
        os_signpost(type: .event, name: "syncend")
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
