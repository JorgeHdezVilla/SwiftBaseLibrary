//
//  DeviceUtils.swift
//  VentasTotalPlayiOS
//
//  Created by Jorge Hdez Villa on 12/02/17.
//  Copyright © 2017 TotalPlay. All rights reserved.
//

import UIKit

class DeviceUtils: NSObject {

    class func devideID() -> String{
        return UIDevice.current.identifierForVendor!.uuidString
    }
    
}
