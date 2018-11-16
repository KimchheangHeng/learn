//
//  ViewController.swift
//  TestWKWebviewJSPerformance
//
//  Created by huahuahu on 2018/11/9.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import UIKit
import WebKit
import SnapKit
import SwiftyBeaver
import os.signpost


class ViewController: UIViewController {
    
    var webView: WKWebView!
    var button: UIButton!
    var currentTryCount = 1 //当前试图发送的次数
    let maxTryCount = 19
    let log = SwiftyBeaver.self
    var records = [JSPerformanceRecord]()
    var currentRecord: JSPerformanceRecord!
    let syslog = OSLog.init(subsystem: "com.tiger.test", category: "sync")

    override func viewDidLoad() {
        super.viewDidLoad()
        let console = ConsoleDestination()  // log to Xcode Console
        log.addDestination(console)
        
        self.view.backgroundColor = UIColor.white
        view.accessibilityIdentifier = "rootView abi"
        view.accessibilityLabel = "rootViewVV"
        button = UIButton.init()
        button.backgroundColor = .gray
        button.accessibilityIdentifier = "mybtn abi"
        button.accessibilityLabel = "mybtnVV"
        button.setTitle("click to send", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().labeled("mybutton centerX")
            make.top.equalToSuperview().offset(50).labeled("mybutton top")
        }
        button.addTarget(self, action: #selector(type(of: self).testSendMsg), for: .touchUpInside)
        
        let config = WKWebViewConfiguration.init()
        let usecc = config.userContentController
        usecc.add(self, name: "testecho")
        let jsStr = """
        function echo(str) {console.log(str);window.webkit.messageHandlers.testecho.postMessage("str");}
        """
        let userScript = WKUserScript.init(source: jsStr, injectionTime: .atDocumentStart, forMainFrameOnly: true)
        usecc.addUserScript(userScript)

        webView = WKWebView.init(frame: .zero, configuration: config)
        webView.accessibilityIdentifier = "mywebview abi"
        webView.accessibilityLabel = "mywebviewVV"
        
        view.addSubview(webView)
        webView.snp.makeConstraints({ (make) in
            make.leading.trailing.bottom.equalToSuperview().labeled("mywebview Edges")
            make.top.equalToSuperview().offset(200).labeled("mywebview Top")
        })
        
        //加载本地文件
        let fileURL = Bundle.main.url(forResource: "index", withExtension: "html")!
        let request = URLRequest.init(url: fileURL)
        webView.load(request)
        
    }
    
    @objc func testSendMsg() {
        currentTryCount = 1
        self.records.removeAll()
        sendMsgToJS()
    }
    
    func sendMsgToJS() {
        let signpostID = OSSignpostID(log: syslog)

        let jsStr = getMsgForSendCount(currentTryCount)
        let strCount = jsStr.count
        mylog("just before send \(jsStr.count) bytes to JS")
        
        currentRecord = JSPerformanceRecord.init(beforeCall: CFAbsoluteTimeGetCurrent(), getJsCall: nil, getcallBack: nil, jsStr: jsStr)
        os_signpost(.begin, log: syslog, name: "runjs", signpostID: signpostID, "%d", strCount)
        self.webView.evaluateJavaScript(jsStr) { (result, err) in
            os_signpost(.end, log: self.syslog, name: "runjs", signpostID: signpostID, "%d", strCount)
            self.currentRecord.getcallBack = CFAbsoluteTimeGetCurrent()
            self.records.append(self.currentRecord)
            self.mylog("\(jsStr.count) bytes callback, result: \(result.debugDescription), err: \(err.debugDescription)")
            self.currentTryCount += 1
            if self.currentTryCount < self.maxTryCount {
                self.sendMsgToJS()
            } else {
                self.mylog("has send \(self.currentTryCount) times")
                self.records.forEach({ self.mylog($0.description)})
            }
        }
    }
    
    
    func getMsgForSendCount(_ count: Int) -> String {
//        mylog("before \(#function)")
        let byteCount: Int = Int.init(pow(Double.init(2), Double.init(count)))
        let msge = (0..<byteCount).map{ _ in "s"}.reduce("", +)
//        mylog("end \(#function)")
        return "echo(\"\(msge)\")"
    }
    
    func mylog(_ str: String) {
        log.verbose(str)
    }
}

extension ViewController: WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        currentRecord.getJsCall = CFAbsoluteTimeGetCurrent()
        mylog("\(self.currentTryCount) call native , message is \(message.name),")
    }
}

struct JSPerformanceRecord {
    var beforeCall: CFAbsoluteTime?
    var getJsCall: CFAbsoluteTime?
    var getcallBack: CFAbsoluteTime?
    var jsStr: String
    
    var description: String {
        return "strCount: \(jsStr.count), toJS:\(getJsCall! - beforeCall!), toatal:\(getcallBack! - beforeCall!)"
    }
}
