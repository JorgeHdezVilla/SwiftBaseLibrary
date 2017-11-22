//
//  RetrofitManager.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez VIlla on 09/10/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit
import SwiftBaseLibrary

class RetrofitManager<Res : BaseResponse>: BaseRetrofitManager<Res> {

    override func getDebugEnabled() -> Bool {
        return false
    }
    
    override func getJsonDebug(requestUrl : String) -> String {
        return ""
    }
    
}
