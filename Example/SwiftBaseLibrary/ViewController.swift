//
//  ViewController.swift
//  SwiftBaseLibrary
//
//  Created by JorgeHdezVilla on 11/21/2017.
//  Copyright (c) 2017 JorgeHdezVilla. All rights reserved.
//

import UIKit
import SwiftBaseLibrary

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mLastNameTextField : UITextField = UITextField()
        mLastNameTextField.text?.trim()
        
        
        var mFormValidator : FormValidator!
        mFormValidator.isValid()
        
        mFormValidator = FormValidator(showAllErrors: true)
        mFormValidator.addValidators(validators:
            TextFieldValidator(textField: mLastNameTextField, regex: RegexEnum.NOT_EMPTY),
                                     TextFieldValidator(textField: mLastNameTextField, regex: RegexEnum.NOT_EMPTY),
                                     TextFieldValidator(textField: mLastNameTextField, regex: RegexEnum.NOT_EMPTY)
        )
    }

}

