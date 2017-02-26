//
//  ViewController.swift
//  TGKeyboardLearn
//
//  Created by huahuahu on 16/7/23.
//  Copyright © 2016年 huahuahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource{

    let myTextField = UITextView()
    let allKeyboard:[UIKeyboardType] = [UIKeyboardType.alphabet,
                                        UIKeyboardType.asciiCapable,
                                        UIKeyboardType.decimalPad,
                                        UIKeyboardType.default,
                                        UIKeyboardType.emailAddress,
                                        UIKeyboardType.namePhonePad,
                                        UIKeyboardType.numberPad,
                                        UIKeyboardType.numbersAndPunctuation,
                                        UIKeyboardType.phonePad,
                                        UIKeyboardType.twitter,
                                        UIKeyboardType.URL,
                                        UIKeyboardType.webSearch]
    let allkeyboardname:[String] = ["Alphabet",
                                    "ASCIICapable",
                                    "DecimalPad",
                                    "Default",
                                    "EmailAddress",
                                    "NamePhonePad",
                                    "NumberPad",
                                    "NumbersAndPunctuation",
                                    "PhonePad",
                                    "Twitter",
                                    "URL",
                                    "WebSearch"]
    let allreturnType:[UIReturnKeyType] = [UIReturnKeyType.continue,
                                           UIReturnKeyType.default,
                                           UIReturnKeyType.done,
                                           UIReturnKeyType.emergencyCall,
                                           UIReturnKeyType.go,
                                           UIReturnKeyType.google,
                                           UIReturnKeyType.join,
                                           UIReturnKeyType.next,
                                           UIReturnKeyType.route,
                                           UIReturnKeyType.search,
                                           UIReturnKeyType.send,
                                           UIReturnKeyType.yahoo]
    let allreturnStr:[String] = ["Continue",
                                 "Default",
                                 "Done",
                                 "EmergencyCall",
                                 "Go",
                                 "Google",
                                 "Join",
                                 "Next",
                                 "Route",
                                 "Search",
                                 "Send",
                                 "Yahoo"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.myTextField.returnKeyType
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        self.myTextField.frame = CGRect(x: 0, y: s_ScreenHeight-100, width: s_ScreenWidth, height: 50)
        
        self.myTextField.delegate = self
//        self.myTextField.placeholder = "test"
        self.myTextField.textAlignment = .center
//        self.myTextField.keyboardType = .DecimalPad
//        self.myTextField.becomeFirstResponder()
        myTextField.backgroundColor = UIColor.red
//        myTextField.leftView = UIImageView.init(image: UIImage.init(named: "lefttextfield"))
//        myTextField.inputView = UIImageView.init(image: UIImage.init(named: "lefttextfield"));
//        myTextField.leftViewMode = .Always
        myTextField.keyboardAppearance = .dark
        
//        myTextField.keyboardType = .ASCIICapable
//        myTextField.keyboardType = .DecimalPad
//        myTextField.keyboardType = .WebSearch
        myTextField.textContainerInset = UIEdgeInsetsMake(10, 30, 10, 20)
        let picker = UIPickerView.init(frame: CGRect(x: 0, y: s_StatusBarHeight, width: s_ScreenWidth, height: s_ScreenHeight/3))
        picker.backgroundColor = UIColor.red
        picker.delegate = self
        picker.dataSource = self
        self.view.addSubview(picker)
        
        let button = UIButton.init(frame: CGRect(x: 0, y: s_ScreenHeight/3+20, width: s_ScreenWidth, height: 30))
        button.addTarget(self, action: #selector(ViewController.didmis(_:)), for: .touchUpInside)
        button.setTitle("消失键盘", for: UIControlState())
        self.view.addSubview(button)
//        button.backgroundColor = UIColor.yellowColor()
        button.setTitleColor(UIColor.black, for: UIControlState())
        
        
        myTextField.text = "click to show keyborad"
        myTextField.font = myTextField.font?.withSize(24)
//        myTextField.allowsEditingTextAttributes =
            myTextField.textAlignment = .left
//        myTextField.clearsOnInsertion = true
//        myTextField.clearsOnBeginEditing = true
//        myTextField.clearButtonMode = .WhileEditing
//        myTextField.borderStyle = .Bezel
//        myTextField.borderStyle = .None
        
//        myTextField.borderStyle = .RoundedRect
    
        
        self.view.addSubview(self.myTextField)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyBoardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyBOardDidShow(_:) ), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardwillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboarddidHide(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyBoardchangeFrame(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.inputmodechange(_:)), name: NSNotification.Name.UITextInputCurrentInputModeDidChange, object: nil)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("33")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func textFieldDidEndEditing(_ textField: UITextField) {
        assert(textField == self.myTextField)
//        self.myTextField.resignFirstResponder()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime(uptimeNanoseconds: 4)) {
            self.myTextField.backgroundColor = UIColor.yellow
        }

    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("begin")
        print(textView.textInputMode?.primaryLanguage)
        print("eednd")
        if text == "\n"  {
            let bounds = myTextField.bounds;
            let start = myTextField.closestPosition(to: bounds.origin)
            let end = myTextField.closestPosition(to: CGPoint(x: s_ScreenWidth, y: bounds.size.height));
            let visiableRange = myTextField.textRange(from: start!, to: end!);
            let startint = myTextField.offset(from: myTextField.beginningOfDocument, to: start!)
            let endint = myTextField.offset(from: myTextField.beginningOfDocument, to: end!)
            let str = myTextField.text;
            print("all")
            print(myTextField.text)
            print("start")
            print(str?.substring(to: (str?.index((str?.startIndex)!, offsetBy: startint))!))
            print("end")
           print( str?.substring(to: (str?.index((str?.startIndex)!, offsetBy: endint))!))
            textView.resignFirstResponder()
            self.myTextField.text.lengthOfBytes(using: String.Encoding.utf8)
            self.myTextField.scrollRangeToVisible(NSMakeRange(0, 3))
        }
        return true
    }
    func textFieldShouldReturn(_ textField: UITextView) -> Bool {
        assert(textField == self.myTextField)
        let allRagne = self.myTextField.textRange(from: self.myTextField.beginningOfDocument, to: self.myTextField.endOfDocument)
        
        
//        self.myTextField.setBaseWritingDirection(.RightToLeft,
//                                                 forRange: allRagne!)
//        self.myTextField.insertText("rjrj")
//        let pos1 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 0);
//        let pos2 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 1);
//        let pos3 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 2);
        self.myTextField.firstRect(for: allRagne!)
        let bounds = myTextField.bounds;
        let start = myTextField.closestPosition(to: bounds.origin)
        let end = myTextField.closestPosition(to: CGPoint(x: s_ScreenWidth, y: bounds.size.height));
        let visiableRange = myTextField.textRange(from: start!, to: end!);
        let startint = myTextField.offset(from: myTextField.beginningOfDocument, to: start!)
        let endint = myTextField.offset(from: myTextField.beginningOfDocument, to: end!)
        
        
        
        
        self.myTextField.deleteBackward()
        self.myTextField.resignFirstResponder()
        return true
    }
    func keyBoardWillShow(_ notity:Notification) -> Void {
        let dict = notity.userInfo
        let keyboardrect = (dict![UIKeyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        let viewBounds = self.view.convert(keyboardrect!, from: nil)
        self.myTextField.frame = CGRect(x: 0, y: viewBounds.origin.y-100, width: s_ScreenWidth, height: 50)
        
    }
    func keyBOardDidShow(_ notity:Notification) -> Void {
//        let dict  = notity.userInfo;
//        self.myTextField.setMarkedText("marked", selectedRange: NSMakeRange(0, 0))
        
    }
    func keyboardwillHide(_ notify:Notification) -> Void {
        let dict = notify.userInfo
        let keyboardrect = (dict![UIKeyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        let viewBounds = self.view.convert(keyboardrect!, from: nil)
        self.myTextField.frame = CGRect(x: 0, y: viewBounds.origin.y-100, width: s_ScreenWidth, height: 50)
        
    }
    
    func keyboarddidHide(_ notify:Notification) -> Void {
//        let dict = notify.userInfo
//        let keyboardrect = dict![UIKeyboardFrameEndUserInfoKey]?.CGRectValue()
//        let viewBounds = self.view.convertRect(keyboardrect!, fromView: nil)
//        self.myTextField.frame = CGRectMake(0, viewBounds.origin.y-50, s_ScreenWidth/2, 50)
        
        
    }
    
    func keyBoardchangeFrame(_ notify:Notification) -> Void {
        let dict = notify.userInfo
        let  keyboardRect = (dict![UIKeyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        print(keyboardRect)
        self.myTextField.markedTextRange
        
    }
    func inputmodechange(_ notify:Notification) -> Void {
        let dic = notify.userInfo
        print("notifybegin")
        print(notify)
        print(notify.object)
        print(dic)
        print("notifyend")
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2;
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return allKeyboard.count
        }
        else
        {
            return allreturnType.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return  String.init(format: "%d", allKeyboard[row].rawValue)
        if component == 0 {
            return allkeyboardname[row]
        }
        else
        {
            return allreturnStr[row]
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            self.myTextField.keyboardType = allKeyboard[row]
        }
        else
        {
            self.myTextField.returnKeyType = allreturnType[row]
        }
    }
    
    func didmis(_ sender:AnyObject) -> Void {
        self.myTextField.resignFirstResponder()
    }
}

