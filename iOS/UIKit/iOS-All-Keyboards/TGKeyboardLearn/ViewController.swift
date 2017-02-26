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
    let allKeyboard:[UIKeyboardType] = [UIKeyboardType.Alphabet,
                                        UIKeyboardType.ASCIICapable,
                                        UIKeyboardType.DecimalPad,
                                        UIKeyboardType.Default,
                                        UIKeyboardType.EmailAddress,
                                        UIKeyboardType.NamePhonePad,
                                        UIKeyboardType.NumberPad,
                                        UIKeyboardType.NumbersAndPunctuation,
                                        UIKeyboardType.PhonePad,
                                        UIKeyboardType.Twitter,
                                        UIKeyboardType.URL,
                                        UIKeyboardType.WebSearch]
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
    let allreturnType:[UIReturnKeyType] = [UIReturnKeyType.Continue,
                                           UIReturnKeyType.Default,
                                           UIReturnKeyType.Done,
                                           UIReturnKeyType.EmergencyCall,
                                           UIReturnKeyType.Go,
                                           UIReturnKeyType.Google,
                                           UIReturnKeyType.Join,
                                           UIReturnKeyType.Next,
                                           UIReturnKeyType.Route,
                                           UIReturnKeyType.Search,
                                           UIReturnKeyType.Send,
                                           UIReturnKeyType.Yahoo]
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
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view, typically from a nib.
        self.myTextField.frame = CGRectMake(0, s_ScreenHeight-100, s_ScreenWidth, 50)
        
        self.myTextField.delegate = self
//        self.myTextField.placeholder = "test"
        self.myTextField.textAlignment = .Center
//        self.myTextField.keyboardType = .DecimalPad
//        self.myTextField.becomeFirstResponder()
        myTextField.backgroundColor = UIColor.redColor()
//        myTextField.leftView = UIImageView.init(image: UIImage.init(named: "lefttextfield"))
//        myTextField.inputView = UIImageView.init(image: UIImage.init(named: "lefttextfield"));
//        myTextField.leftViewMode = .Always
        myTextField.keyboardAppearance = .Dark
        
//        myTextField.keyboardType = .ASCIICapable
//        myTextField.keyboardType = .DecimalPad
//        myTextField.keyboardType = .WebSearch
        myTextField.textContainerInset = UIEdgeInsetsMake(10, 30, 10, 20)
        let picker = UIPickerView.init(frame: CGRectMake(0, s_StatusBarHeight, s_ScreenWidth, s_ScreenHeight/3))
        picker.backgroundColor = UIColor.redColor()
        picker.delegate = self
        picker.dataSource = self
        self.view.addSubview(picker)
        
        let button = UIButton.init(frame: CGRectMake(0, s_ScreenHeight/3+20, s_ScreenWidth, 30))
        button.addTarget(self, action: #selector(ViewController.didmis(_:)), forControlEvents: .TouchUpInside)
        button.setTitle("消失键盘", forState: .Normal)
        self.view.addSubview(button)
//        button.backgroundColor = UIColor.yellowColor()
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        
        myTextField.text = "click to show keyborad"
        myTextField.font = myTextField.font?.fontWithSize(24)
//        myTextField.allowsEditingTextAttributes =
            myTextField.textAlignment = .Left
//        myTextField.clearsOnInsertion = true
//        myTextField.clearsOnBeginEditing = true
//        myTextField.clearButtonMode = .WhileEditing
//        myTextField.borderStyle = .Bezel
//        myTextField.borderStyle = .None
        
//        myTextField.borderStyle = .RoundedRect
    
        
        self.view.addSubview(self.myTextField)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyBoardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyBOardDidShow(_:) ), name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardwillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboarddidHide(_:)), name: UIKeyboardDidHideNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyBoardchangeFrame(_:)), name: UIKeyboardWillChangeFrameNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.inputmodechange(_:)), name: UITextInputCurrentInputModeDidChangeNotification, object: nil)

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("33")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        assert(textField == self.myTextField)
//        self.myTextField.resignFirstResponder()
        dispatch_after(4, dispatch_get_main_queue()) { 
            self.myTextField.backgroundColor = UIColor.yellowColor()
        }

    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        print("begin")
        print(textView.textInputMode?.primaryLanguage)
        print("eednd")
        if text == "\n"  {
            let bounds = myTextField.bounds;
            let start = myTextField.closestPositionToPoint(bounds.origin)
            let end = myTextField.closestPositionToPoint(CGPointMake(s_ScreenWidth, bounds.size.height));
            let visiableRange = myTextField.textRangeFromPosition(start!, toPosition: end!);
            let startint = myTextField.offsetFromPosition(myTextField.beginningOfDocument, toPosition: start!)
            let endint = myTextField.offsetFromPosition(myTextField.beginningOfDocument, toPosition: end!)
            let str = myTextField.text;
            print("all")
            print(myTextField.text)
            print("start")
            print(str.substringToIndex(str.startIndex.advancedBy(startint)))
            print("end")
           print( str.substringToIndex(str.startIndex.advancedBy(endint)))
            textView.resignFirstResponder()
            self.myTextField.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
            self.myTextField.scrollRangeToVisible(NSMakeRange(0, 3))
        }
        return true
    }
    func textFieldShouldReturn(textField: UITextView) -> Bool {
        assert(textField == self.myTextField)
        let allRagne = self.myTextField.textRangeFromPosition(self.myTextField.beginningOfDocument, toPosition: self.myTextField.endOfDocument)
        
        
//        self.myTextField.setBaseWritingDirection(.RightToLeft,
//                                                 forRange: allRagne!)
//        self.myTextField.insertText("rjrj")
//        let pos1 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 0);
//        let pos2 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 1);
//        let pos3 = self.myTextField.positionWithinRange(allRagne!, atCharacterOffset: 2);
        self.myTextField.firstRectForRange(allRagne!)
        let bounds = myTextField.bounds;
        let start = myTextField.closestPositionToPoint(bounds.origin)
        let end = myTextField.closestPositionToPoint(CGPointMake(s_ScreenWidth, bounds.size.height));
        let visiableRange = myTextField.textRangeFromPosition(start!, toPosition: end!);
        let startint = myTextField.offsetFromPosition(myTextField.beginningOfDocument, toPosition: start!)
        let endint = myTextField.offsetFromPosition(myTextField.beginningOfDocument, toPosition: end!)
        
        
        
        
        self.myTextField.deleteBackward()
        self.myTextField.resignFirstResponder()
        return true
    }
    func keyBoardWillShow(notity:NSNotification) -> Void {
        let dict = notity.userInfo
        let keyboardrect = dict![UIKeyboardFrameEndUserInfoKey]?.CGRectValue()
        let viewBounds = self.view.convertRect(keyboardrect!, fromView: nil)
        self.myTextField.frame = CGRectMake(0, viewBounds.origin.y-100, s_ScreenWidth, 50)
        
    }
    func keyBOardDidShow(notity:NSNotification) -> Void {
//        let dict  = notity.userInfo;
//        self.myTextField.setMarkedText("marked", selectedRange: NSMakeRange(0, 0))
        
    }
    func keyboardwillHide(notify:NSNotification) -> Void {
        let dict = notify.userInfo
        let keyboardrect = dict![UIKeyboardFrameEndUserInfoKey]?.CGRectValue()
        let viewBounds = self.view.convertRect(keyboardrect!, fromView: nil)
        self.myTextField.frame = CGRectMake(0, viewBounds.origin.y-100, s_ScreenWidth, 50)
        
    }
    
    func keyboarddidHide(notify:NSNotification) -> Void {
//        let dict = notify.userInfo
//        let keyboardrect = dict![UIKeyboardFrameEndUserInfoKey]?.CGRectValue()
//        let viewBounds = self.view.convertRect(keyboardrect!, fromView: nil)
//        self.myTextField.frame = CGRectMake(0, viewBounds.origin.y-50, s_ScreenWidth/2, 50)
        
        
    }
    
    func keyBoardchangeFrame(notify:NSNotification) -> Void {
        let dict = notify.userInfo
        let  keyboardRect = dict![UIKeyboardFrameEndUserInfoKey]?.CGRectValue()
        print(keyboardRect)
        self.myTextField.markedTextRange
        
    }
    func inputmodechange(notify:NSNotification) -> Void {
        let dic = notify.userInfo
        print("notifybegin")
        print(notify)
        print(notify.object)
        print(dic)
        print("notifyend")
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2;
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return allKeyboard.count
        }
        else
        {
            return allreturnType.count
        }
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return  String.init(format: "%d", allKeyboard[row].rawValue)
        if component == 0 {
            return allkeyboardname[row]
        }
        else
        {
            return allreturnStr[row]
        }

    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            self.myTextField.keyboardType = allKeyboard[row]
        }
        else
        {
            self.myTextField.returnKeyType = allreturnType[row]
        }
    }
    
    func didmis(sender:AnyObject) -> Void {
        self.myTextField.resignFirstResponder()
    }
}

