//
//  BaseEstrategiaPresenter.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez VIlla on 07/09/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit
import SwiftBaseLibrary

class BaseEstrategiaPresenter: BasePresenter, AlamofireResponseDelegate {
    
    override func viewDidLoad() {
    }
    
    func onRequestWs(){
        AlertDialog.showOverlay()
    }
    
    func onSuccessLoadResponse(requestUrl: String, response: BaseResponse) {
        
    }
    
    func onErrorLoadResponse(requestUrl : String, messageError : String){
        AlertDialog.hideOverlay()
        if messageError == "" {
            AlertDialog.show( title: "Error", body: "", view: mViewController)
        } else {
            AlertDialog.show(title: "Ha ocurrido un error", body: messageError, view: mViewController)
        }
    }
    
    func onErrorConnection(){
        AlertDialog.hideOverlay()
        AlertDialog.show( title: "Error", body: "", view: mViewController)
    }
    
}
