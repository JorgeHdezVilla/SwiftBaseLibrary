//
//  ViewController.swift
//  SwiftBaseLibrary
//
//  Created by JorgeHdezVilla on 11/21/2017.
//  Copyright (c) 2017 JorgeHdezVilla. All rights reserved.
//

import UIKit
import ObjectMapper
import SwiftBaseLibrary

class ViewController: BaseViewController, TableViewCellClickDelegate {
    func onTableViewCellClick(item: NSObject, cell: UITableViewCell) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mDataManager : DataManager = DataManager().getInstance()
        
//        mDataManager.tx(execute: { (tx) -> Void in
//            tx.save(object: <#T##T#>)
//        })
        
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
        let resulTableView : UITableView! = UITableView()
        BaseDataSource(tableView: resulTableView, delegate: self)

    }
    
    override func getPresenter() -> BasePresenter? {
        return nil
    }
    
    public class BaseEstrategiaResponse: BaseResponse {
        
        
        var result : String = ""
        var resultDescription : String = ""
        var idResult : String = ""
        
        required convenience public init?(map: Map) {
            self.init()
        }
        
        public override func mapping(map: Map) {
            self.result     <- map["Result"]
            if self.result == "" {
                self.result <- map["result"]
            }
            self.resultDescription <- map["ResultDescription"]
            
            self.idResult <- map["idresult"]
        }
        
    }


}

