//
//  Test.swift
//  testObjc
//
//  Created by huahuahu on 2018/12/16.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import Foundation

//MARK: - objcmember class
@objcMembers public class OBJCMemberClass: NSObject {
    var someFlag = false
    //自动添加了objc 标识
    func functionInClassNoObjc() {
        print("\(#function)")
    }

    //自动添加了objc 标识，这个是多余的
    @objc func functionInClassWithObjc() {
        print("\(#function)")
    }

}

//The objc attribute is implicitly added to Objective-C compatible members of the class, its extensions, its subclasses, and all of the extensions of its subclasses.
extension OBJCMemberClass {
    // extension 也被自动添加了objc
    func funcInExtensionNoObjc() {
        print("\(#function)")
    }
}

// 这个objc标识是多余的
@objc extension OBJCMemberClass {
    func functionInExtensionWithObjc() {
        print("\(#function)")
    }
}


//MARK: - objc class。这个其实没必要，因为继承自NSObject，已经隐式添加了objc
@objc public class OBJCClass: NSObject {
    var someFlag = false
    // 不加objc，不能被识别
    func functionInClassNoObjc() {
        print("\(#function)")
    }

    // 加了objc，自然可以被识别
    @objc func functionInClassWithObjc() {
        print("\(#function)")
    }
}

@objc extension OBJCClass {
    // 这个可以被oc识别，因为 extenssion 加了objc
    func functionInExtensionWithObjc() {
        print("\(#function)")
    }
}

extension OBJCClass {
    // 这个不能被oc识别，因为没有objc 标识
    func funcInExtensionNoObjc() {
        print("\(#function)")
    }
}

//MARK: - plain class
public class PlainClass: NSObject {
    var someFlag = false
    // 不加objc，不能被识别
    func functionInClassNoObjc() {
        print("\(#function)")
    }
    
    @objc func functionInClassWithObjc() {
        print("\(#function)")
    }
}

@objc extension PlainClass {
    // 这个可以被oc识别，因为 extenssion 加了objc
    func functionInExtensionWithObjc() {
        print("\(#function)")
    }
}

extension PlainClass {
    // 这个不能被oc识别，因为没有objc 标识
    func funcInExtensionNoObjc() {
        print("\(#function)")
    }

    // 继承自nsobject 的方法，自动添加了objc
    func description() -> String {
        return "fd"
    }
}

@objc class Plain {

}
