//
//  ViewController.swift
//  testObjc
//
//  Created by huahuahu on 2018/12/16.
//  Copyright © 2018 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let objcmemberInstance = OBJCMemberClass.init()
        objcmemberInstance.perform(#selector(type(of: objcmemberInstance).functionInClassWithObjc))
        objcmemberInstance.perform(#selector(type(of: objcmemberInstance).functionInClassNoObjc))
        objcmemberInstance.perform(#selector(type(of: objcmemberInstance).funcInExtensionNoObjc))
        objcmemberInstance.perform(#selector(type(of: objcmemberInstance).functionInExtensionWithObjc))
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            print(objcmemberInstance.someFlag)
        }

        let objcInstance = OBJCClass.init()
        objcInstance.perform(#selector(type(of: objcInstance).functionInClassWithObjc))
        objcInstance.perform(#selector(type(of: objcInstance).functionInClassNoObjc))
        objcInstance.perform(#selector(type(of: objcInstance).funcInExtensionNoObjc))
        objcInstance.perform(#selector(type(of: objcInstance).functionInExtensionWithObjc))
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            print(objcInstance)
        }

        let plainInstance = PlainClass.init()
        plainInstance.perform(#selector(type(of: plainInstance).functionInClassWithObjc))
        plainInstance.perform(#selector(type(of: plainInstance).functionInClassNoObjc))
        plainInstance.perform(#selector(type(of: plainInstance).funcInExtensionNoObjc))
        plainInstance.perform(#selector(type(of: plainInstance).functionInExtensionWithObjc))
        plainInstance.perform(#selector(type(of: plainInstance).description))
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            print(objcInstance)
        }


    }


}

