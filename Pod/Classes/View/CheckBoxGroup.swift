//
//  CheckBoxGroup.swift
//  VentasTotalPlayiOS
//
//  Created by Jorge Hdez Villa on 05/02/17.
//  Copyright © 2017 TotalPlay. All rights reserved.
//

import UIKit

public protocol CheckGroupDelegate: NSObjectProtocol {
    
    func onCheckBoxButtonClick(checkButton : CheckBoxButton)
    
}


class CheckBoxGroup: NSObject {
    
    var delegate : CheckGroupDelegate?
    var checksBox : [CheckBoxButton]!
    var checkBoxSelected : CheckBoxButton?
    
    init (checksBox : [CheckBoxButton], delegate : CheckGroupDelegate? = nil) {
        super.init()
        if delegate != nil {
            self.delegate = delegate
        }
        self.checksBox = checksBox
        for view in checksBox as [CheckBoxButton]{
            view.removeTarget(nil, action: nil, for: .allEvents)
            view.addTarget(self, action: #selector(handleTap(_:)), for: UIControlEvents.touchUpInside)
        }
    }
    
    func handleTap(_ sender: CheckBoxButton? = nil) {
        self.checkBoxSelected = sender
        self.setCheck(checkBox: sender!)
        if delegate != nil{
                delegate?.onCheckBoxButtonClick(checkButton: sender!)
        }
    }
    
    func setCheck(checkBox:CheckBoxButton){
        for view in checksBox as [CheckBoxButton]{
            if view != checkBox{
                view.isChecked = false
            }
        }
        checkBox.isChecked = true
    }
    
    func getValue() -> String? {
        if checkBoxSelected != nil {
            return checkBoxSelected!.value
        }
        return ""
    }
    
    func setValue(value : String){
        for view in checksBox as [CheckBoxButton]{
            if view.value == value {
                self.setCheck(checkBox: view)
            }
        }
    }

}
