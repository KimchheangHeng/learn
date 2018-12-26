//
//  ObjectA.swift
//  TestSelfInBlock
//
//  Created by huahuahu on 2018/12/2.
//  Copyright © 2018 郭腾虎. All rights reserved.
//

import Foundation
import UIKit

class Test: UIView {
    
    
    //MARK: - non-lazy store
    var store = 8
    var storeBlock: Int = {
        // 在Init 完成之前被调用，只被调用一次
        print("storeBlock")
        // 这里不能引用self，会报错“Use of unresolved identifier 'self'”
        print("self: \(self)")
        print("typeofself:\(type(of: self))")
        return 9
    }()

    func method1() -> Int {
        print("df")
        return 8
    }
    
    // MARK: - lazy store
    lazy var lazyStore = 8
    
    // MARK: - non-lazy compute
    var compute: Int {
        // 在第一次使用时，才会执行这个block 在 Init 之后
        // 每一次引用着这个变量，都会执行这个block
        print("compute")
        //可以引用 self
        print(self)
        return 8
    }

    // MARK: - lazy compute
    lazy var lazyCompute: Int = {
        // 第一次使用时，才会执行这个block
        // 这个block 只会执行一次
        print("layCompute")
        // 可以引用self
        print(self)
        return 9
    }()
    
    // MARK: - static store
    static var staticStore = 8

    // MARK: - static lazy compute
//    'lazy' must not be used on an already-lazy global
    static var staticLazyCompute: Int = {
        // 只会被调用一次
        print("staticLazyCompute")
        return 8
    }()
    
    // MARK: - static compute
    static var staticCompute: Int {
        // 每次都会被调用
        print("staticCompute")
        return 8
    }
    
//    init() {
//        print("has init")
//    }

    
    func printSelf() {
//        print("test printed, \(lazyStore), \(lazyCompute), \(store), \(computeStore) \(Test.staticCompute), \(Test.staticLazyCompute) \(storeBlock)")
        print("------------------------")
        print("\(store), \(storeBlock)")
        print("\(lazyStore)")
        print("\(compute), \(lazyCompute)")
        print("\(Test.staticStore)")
        print("\(Test.staticCompute), \(Test.staticLazyCompute)")
        let me = Test.method1
        print(me)
        print(type(of: me))
        let result = me(self)()
        print(result)

    }
    
    
}
