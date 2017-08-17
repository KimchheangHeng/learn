//
//  main.swift
//  Access Control
//
//  Created by huahuahu on 2017/8/17.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation

print("Hello, World!")
//
//public class SomePublicClass {}
//class SomeInternalClass {}//implicitly internal
//fileprivate class SomeFilePrivateClass {}
//private class SomePrivateClass {}
//
//public var somePublicVariable = 0
//let someInternalConstant = 0//implicitly internal
//fileprivate func someFilePrivateFunction() {}
//private func somePrivateFunction() {}


public class SomePublicClass {                  // explicitly public class
    public var somePublicProperty = 0            // explicitly public class member
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}


class SomeInternalClass {                       // implicitly internal class
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

fileprivate class SomeFilePrivateClass {        // explicitly file-private class
    func someFilePrivateMethod() {}              // implicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

private class SomePrivateClass {                // explicitly private class
    func somePrivateMethod() {}                  // implicitly private class member
}


//不加 private 编译不过
private func someFunction1() -> (SomeInternalClass, SomePrivateClass) {
    // function implementation goes here
    return (SomeInternalClass(),SomePrivateClass())
}


//可以在子类中把父类的某个成员的访问控制级别提高。

//public class A {
//    fileprivate func someMethod() {}
//}
//
//internal class B: A {
//    override internal func someMethod() {}
//}
//
//可以在子类中调用父类的访问控制级别更高的函数。
public class A {
    fileprivate func someMethod() {}
}

internal class B: A {
    override internal func someMethod() {
        super.someMethod()
    }
}

//不用private 会报错
//Variable must be declared private or fileprivate because its type 'SomePrivateClass' uses a private type
private var privateInstance = SomePrivateClass()

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}


