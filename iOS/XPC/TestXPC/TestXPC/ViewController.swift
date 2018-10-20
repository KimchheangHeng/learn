//
//  ViewController.swift
//  TestXPC
//
//  Created by huahuahu on 2018/9/20.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }


}

extension ViewController: FeedMeCookieProtocol {
    func feedMeACookie(_ cookie: Cookie) -> Void {
        print(cookie.cookieName)
    }
}
