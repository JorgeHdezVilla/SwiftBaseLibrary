//
//  RecoveryPasswordPresenter.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez VIlla on 07/09/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit
import SwiftBaseLibrary
import ObjectMapper

enum KeysEnum: APIKeys {
    case EXTRA_WORK_ORDER
    case EXTRA_TIME_TO_ARRIVE_RESPONSE
    case EXTRA_ARR_FAMILY
    case EXTRA_DIRECCION_BEAN
    case EXTRA_PLAN
    case EXTRA_CAPTURE_IMAGE
    case EXTRA_TYPE_PLAN_SELECTED
}




class RecoveryPasswordPresenter: BasePresenter, AlamofireResponseDelegate {

    func recoveryPassword(accountNumber : String){
        
        mViewController.extras[KeysEnum.EXTRA_ARR_FAMILY] as! NSObject
        
        let accountNumberRequest : AccountNumberRequest = AccountNumberRequest(accountNumber: accountNumber)
        RetrofitManager<BaseResponse>.init(requestUrl: ApiDefinition.WS_RECOVERY_PASSWORD, delegate: self).request(requestModel: accountNumberRequest)
    }
    
    func onRequestWs(){
        AlertDialog.showOverlay()
    }
    
    func onSuccessLoadResponse(requestUrl : String, response : BaseResponse){
        AlertDialog.hideOverlay()
        if requestUrl == ApiDefinition.WS_RECOVERY_PASSWORD {
            ViewControllerUtils.popViewController(viewController: self.mViewController)
            onErrorLoadResponse(requestUrl: requestUrl, messageError: "");
        }
    }
    
    func onErrorLoadResponse(requestUrl : String, messageError : String){
        AlertDialog.show( title: "Error", body: "", view: mViewController)
        AlertDialog.hideOverlay()
    }
    
    func onErrorConnection(){
        AlertDialog.hideOverlay()
        AlertDialog.show( title: "Error", body: "", view: mViewController)
    }
    
}

class ApiDefinition: NSObject {
    static let API_TOTAL = "https://189.203.181.233:443"
    static let WS_LOGIN = API_TOTAL + "/Estrategia/LoginUserApp"
    static let WS_REGISTER_USER = API_TOTAL + "/Estrategia/RegisterUser"
    static let WS_RECOVERY_PASSWORD = API_TOTAL + "/Estrategia/RecoverPassword"
}

class AccountNumberRequest: BaseRequest {
    
    var accountNumber : String?
    
    init(accountNumber : String) {
        super.init()
        self.accountNumber = accountNumber
    }
    
    public required init?(map: Map) {
        super.init()
    }
    
    internal override func mapping(map : Map){
        super.mapping(map: map)
        accountNumber <- map["Account"]
    }
    
}
