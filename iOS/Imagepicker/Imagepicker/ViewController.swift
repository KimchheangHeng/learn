//
//  ViewController.swift
//  Imagepicker
//
//  Created by huahuahu on 2018/7/5.
//  Copyright © 2018年 郭腾虎. All rights reserved.
//

import UIKit
import DeviceCheck
import ContactsUI

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    // 进程外获取，不需要经过用户同意
    @IBAction func selectImage(_ sender: Any) {
        let libraryPicker = UIImagePickerController.init()
        libraryPicker.delegate = self
        libraryPicker.sourceType = .photoLibrary
        present(libraryPicker, animated: true, completion: nil)
    }
    @IBAction func selectContact(_ sender: Any) {
        let contactPicker = CNContactPickerViewController.init()
        contactPicker.delegate = self
        present(contactPicker, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerController.InfoKey.originalImage]
        imageView.image = image as? UIImage
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: CNContactPickerDelegate {
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        picker.dismiss(animated: true, completion: nil)
        let phoneNumer: CNPhoneNumber? = contact.phoneNumbers.first?.value
        let name =  contact.givenName + contact.middleName + contact.familyName
        
        let alert = UIAlertController.init(title: name, message: phoneNumer?.stringValue, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
