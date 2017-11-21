//
//  IconTextField.swift
//  VentasTotalPlayiOS
//
//  Created by Daniel García Aldynamic varado on 12/16/16.
//  Copyright © 2016 TotalPlay. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

@IBDesignable class IconTextField: UITextField, UITextFieldDelegate {
    
//    @IBInspectable var iconLeft : UIImage? = nil
    @IBInspectable var maxCharacters : Int = 50
    
    var elements : [String]? = nil
    var indexElementPicker : Int = 0
    var isEnablePicker : Bool = true
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.delegate = self
        self.tintColor = UIColor.white
        self.textColor = UIColor.white
    }
    
    override func draw(_ rect: CGRect) {
//        if iconLeft != nil{
//            let image : UIImageView = UIImageView(image: iconLeft)
//
//            image.contentMode = UIViewContentMode.center
//            self.leftView = image
//            self.leftViewMode = .always
//        } else {
//            self.leftView = nil
//        }
        
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)

        border.borderWidth = width
        self.layer.addSublayer(border)
//        self.layer.masksToBounds = true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= maxCharacters // Bool
    }
    
    
    func setDatePicker(){
        self.removeTarget(self, action: nil, for: UIControlEvents.allEvents)
        self.addTarget(self, action:#selector(tapDateBlurButton(_:)), for: UIControlEvents.editingDidBegin)
    }
    
    func setCreditCardDatePicker(){
        self.removeTarget(self, action: nil, for: UIControlEvents.allEvents)
        self.addTarget(self, action:#selector(tapCreditCardDateBlurButton(_:)), for: UIControlEvents.editingDidBegin)
    }
    
    func setTextPicker(elements : [String]){
        if self.elements == nil{
            self.removeTarget(self, action: nil, for: UIControlEvents.allEvents)
            self.addTarget(self, action:#selector(tapBlurButton(_:)), for: UIControlEvents.editingDidBegin)
        }
        self.elements = elements
        //_ = UITapGestureRecognizer(target: self, action: #selector(self.tapBlurButton(_:)))
    }
    
    func tapBlurButton(_ sender: UITapGestureRecognizer) {
        showActionPicker()
    }
    
    func tapDateBlurButton(_ sender: UITapGestureRecognizer) {
        showActionDatePicker(date: self.text)
    }
    
    func tapCreditCardDateBlurButton(_ sender: UITapGestureRecognizer) {
        showActionCreditCardDatePicker(date: self.text)
    }
    
    func showActionDatePicker(date : String? = nil){
        var showDate : Date? = nil
        if date != nil && date != "" {
            showDate = DateUtils.toDate(date: date!)
        } else {
            let today = Date()
            showDate = Calendar.current.date(byAdding: .year, value: -19, to: today)!
        }
        self.resignFirstResponder()
        let datePicker = ActionSheetDatePicker(title: "Fecha:", datePickerMode: UIDatePickerMode.date, selectedDate: showDate, doneBlock: {
            picker, value, index in
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let dateString = dateFormatter.string(from: value as! Date)
            
//            _ = self.becomeFirstResponder()
            self.text = "\(dateString)"
            self.resignFirstResponder()
            return
        }, cancel: { ActionStringCancelBlock in
//            _ = self.becomeFirstResponder()
            self.resignFirstResponder()
            return
        }, origin: self)
        
        datePicker?.show()
    }
    
    func showActionCreditCardDatePicker(date : String? = nil){
        var showDate : Date? = nil
        if date != nil && date != "" {
            showDate = DateUtils.toDate(date: date!)
        } else {
            let today = Date()
            showDate = Calendar.current.date(byAdding: .year, value: -19, to: today)!
        }
        self.resignFirstResponder()
        let datePicker = ActionSheetDatePicker(title: "Fecha:", datePickerMode: UIDatePickerMode.date, selectedDate: showDate, doneBlock: {
            picker, value, index in
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yy-MM"
            let dateString = DateUtils.toString(date: value as! Date)
            
//            _ = self.becomeFirstResponder()
            self.text = "\(dateString)"
            self.resignFirstResponder()
            return
        }, cancel: { ActionStringCancelBlock in
//            _ = self.becomeFirstResponder()
            self.resignFirstResponder()
            return
        }, origin: self)
        
        datePicker?.show()
    }
    
    func showActionPicker(){
        if isEnablePicker {
            self.resignFirstResponder()
            ActionSheetStringPicker.show(withTitle: self.placeholder, rows: elements, initialSelection: 0, doneBlock: {
                picker, value, index in
//                _ = self.becomeFirstResponder()
                self.indexElementPicker = value
                self.text = index as! String?
                self.resignFirstResponder()
                return
            }, cancel: { ActionStringCancelBlock in
//                _ = self.becomeFirstResponder()
                self.resignFirstResponder()
                return
            }, origin: self)
        }
    }
    
    
}