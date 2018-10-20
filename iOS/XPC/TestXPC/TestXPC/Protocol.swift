//
//  Protocol.swift
//  TestXPC
//
//  Created by huahuahu on 2018/9/20.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import Foundation

class Cookie: NSObject {
    var cookieName: String?
}

@objc protocol FeedMeCookieProtocol {
    func feedMeACookie(_ cookie: Cookie) -> Void
}


