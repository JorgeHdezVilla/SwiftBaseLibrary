//
//  PlaceHolderColorTextField.swift
//  EstrategiaDigital
//
//  Created by Charls Salazar on 07/11/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }
}
