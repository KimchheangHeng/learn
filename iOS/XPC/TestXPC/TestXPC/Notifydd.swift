//
//  Notifydd.swift
//  TestXPC
//
//  Created by huahuahu on 2018/9/20.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import Foundation


/**

 Provides simple IPC messaging. To use this class you need to include
 in your bridging header. (Ab)uses UIPasteboard for message delivery, ie.
 should not be used in production code.
 */
public class SimpleIPC {
    /// Event notification name for libnotify.
    private static let notifyEventName = "com.foo.SimpleIPC"
    
    /// libnotify token.
    private var token: Int32 = 0
    
    /// Starts listening to the events
    public func listen(callback: (String? -> Void)) {
        notify_register_dispatch(SimpleIPC.notifyEventName, &token, dispatch_get_main_queue()) { token in
            callback(UIPasteboard.generalPasteboard().string)
        }
    }
    
    public class func send(message: String) {
        UIPasteboard.generalPasteboard().string = message
        notify_post(SimpleIPC.notifyEventName)
    }
    
    deinit {
        notify_cancel(token)
    }
}
