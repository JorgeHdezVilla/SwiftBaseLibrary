//
//  BasicRequest.swift
//  EstrategiaDigital
//
//  Created by Jorge Hdez Villa on 09/08/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit
import ObjectMapper

open class BaseRequest: NSObject, Mappable {
    
    required convenience public init?(map: Map) {
        self.init()
    }
    
    open func mapping(map : Map){
        
    }
    
}
