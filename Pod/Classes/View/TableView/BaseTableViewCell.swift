//
//  BaseTableViewCell.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez Villa on 05/08/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit

public class BaseTableViewCell: UITableViewCell {
    
    var delegate : NSObjectProtocol!
    var itemObject : NSObject?
    var delegateCell: BaseTableDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapEdit(_:)))
        addGestureRecognizer(tapGesture)
    }
    
    func tapEdit(_ sender: UITapGestureRecognizer) {
        delegateCell?.baseTableDelegate(sender: sender)
    }
    
    func pupulate(object :NSObject) {
        preconditionFailure("This method must be overridden")
    }
    
    func pupulateSelected(object :NSObject) {
        
    }
    
    func executeAction() {
        preconditionFailure("This method must be overridden")
    }
    
    func toString() -> String{
        preconditionFailure("This method must be overridden")
    }
    
}

protocol BaseTableDelegate {
    func baseTableDelegate(sender: UITapGestureRecognizer)
}
