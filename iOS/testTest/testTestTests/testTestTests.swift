//
//  testTestTests.swift
//  testTestTests
//
//  Created by huahuahu on 2018/6/16.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import XCTest
@testable import testTest

class testTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUrlOK() {
        let str1 = "www.baidu.com"
        let url1 = urlFromStr(str1)
//        XCTAssertNil(url1)
        XCTAssertNotNil(url1)
    }
    
    func testUrlNotOK() {
        let str = "fafd顶级阿卡...**"
        let url = urlFromStr(str)
        XCTAssertNil(url)
    }
}
