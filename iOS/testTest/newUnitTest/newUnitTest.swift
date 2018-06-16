//
//  newUnitTest.swift
//  newUnitTest
//
//  Created by huahuahu on 2018/6/16.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import XCTest
@testable import testTest

class newUnitTest: XCTestCase {
    
    var preValue = 0
    
    ///run before all of the test methods in the class
    override class func setUp() {
        super.setUp()
        print("class setup")
    }
    
    ///run before all of the test methods in the class
    override class func tearDown() {
        super.tearDown()
        print("class teardown")
    }

    
    /// 每次方法执行之前，都会先调用这个函数
    override func setUp() {
        super.setUp()
        preValue = 3
        print("instance setup")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        print("instance teardown")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("preValue is \(preValue) in \(#function)")
    }
    
    
    func testSortPerformance()  {
        self.measure {
            var rawArray: [String] = []
            
            (0...20000).forEach({
                rawArray.append(String.init(format: "%d", $0))
            })
            sortArray(rawArray)
        }
    }
    
    func testUrlOK() {
        print("preValue is \(preValue) in \(#function)")
        let str1 = "www.baidu.com"
        let url1 = urlFromStr(str1)
        XCTAssertNotNil(url1)
    }
    
    func testUrlNotOK() {
        let str = "fafd顶级阿卡...**"
        let url = urlFromStr(str)
        XCTAssertNil(url)
    }

    /// 异步测试？？
    func testAsync() {
        let numberCantain = NumberContain()
        numberCantain.number = 1
        asyncPlus(numberCantain, delay: 1)
        
        let expectation =  self.expectation(description: "expectation description")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            expectation.fulfill()
            XCTAssert(numberCantain.number == 2)
            print("fullFill")
        }
        
        self.waitForExpectations(timeout: 3) { (error) in
            print("time out")
        }
        print("end")
    }
    
}
