//
//  BaseTableViewCell.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez Villa on 05/08/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit

open class BaseTableViewCell: UITableViewCell {
    
    var delegate : NSObjectProtocol!
    var itemObject : NSObject?
    var delegateCell: BaseTableDelegate?
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapEdit(_:)))
        addGestureRecognizer(tapGesture)
    }
    
    @objc func tapEdit(_ sender: UITapGestureRecognizer) {
        delegateCell?.baseTableDelegate(sender: sender)
    }
    
    open func pupulate(object :NSObject) {
        preconditionFailure("This method must be overridden")
    }
    
    open func pupulateSelected(object :NSObject) {
        
    }
    
    open func executeAction() {
        preconditionFailure("This method must be overridden")
    }
    
    open func toString() -> String{
        preconditionFailure("This method must be overridden")
    }
    
}

public protocol BaseTableDelegate {
    func baseTableDelegate(sender: UITapGestureRecognizer)
}
