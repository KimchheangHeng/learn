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

class ViewController: UIViewController {
    
    var webView: WKWebView!
    var button: UIButton!
    var sendCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        button = UIButton.init()
        button.setTitle("click to send", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        button.addTarget(self, action: #selector(type(of: self).sendMsg), for: .touchUpInside)
        
        webView = WKWebView.init()
        let usecc = self.webView.configuration.userContentController
        usecc.add(self, name: "testecho")
        
        view.addSubview(webView)
        webView.snp.makeConstraints({ (make) in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(200)
        })
        
        //加载本地文件
        let fileURL = Bundle.main.url(forResource: "index", withExtension: "html")!
        let request = URLRequest.init(url: fileURL)
        webView.load(request)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func sendMsg() {
        sendMsgForCount(0)
    }
    func sendMsgForCount(_ count: Int) {
        let jsStr = "echo(\"\(getMsgForSendCount(sendCount))\")"
        self.mylog("------------------------------------")
        self.mylog("\(self.sendCount) before evaluate \(jsStr.count) bytes JS")
//        self.mylog("\(self.sendCount) before evaluate \(jsStr.count) bytes JS: \(jsStr)")

        self.webView.evaluateJavaScript(jsStr) { (result, err) in
            self.mylog("\(self.sendCount) \(jsStr.count) bytes callback, result: \(result), err: \(err)")
            self.sendCount += 1
            let maxCount = 20
            if self.sendCount <= maxCount {
                self.sendMsgForCount(self.sendCount)
            } else {
                self.mylog("has send \(maxCount) times")
            }
        }

    }
    
    func getMsgForSendCount(_ count: Int) -> String {
        mylog("before \(#function)")
        let byteCount: Int = Int.init(pow(Double.init(2), Double.init(count)))
        let msge =   (0..<byteCount).map({ i in
            return "word"
        }).reduce("", +)
        mylog("end \(#function)")
        return msge
    }
    
    func mylog(_ str: String) {
        let logStr = "\(Date.init().timeIntervalSinceReferenceDate) + \(str)"
        print(logStr)
    }
    
}

extension ViewController: WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        mylog("\(self.sendCount) call native , message is \(message.name),")
    }
}
