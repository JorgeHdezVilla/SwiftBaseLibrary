

import UIKit
import SwiftBaseLibrary

public protocol PackageTypeDelegate: NSObjectProtocol{
    
}

class PackagesTypePresenter: BaseEstrategiaPresenter {

    var mSelectedType : String = ""
    var mPackageTypeDelegate : PackageTypeDelegate!
    
    init(viewController: BaseViewController, mPackageTypeDelegate : PackageTypeDelegate){
        super.init(viewController: viewController)
        self.mPackageTypeDelegate = mPackageTypeDelegate
    }
    
    func loadHomePackages(){
        
    }
    
    func loadBusinessPackages(){
        
    }

    override func onSuccessLoadResponse(requestUrl: String, response: BaseResponse) {

        AlertDialog.hideOverlay()
    }
    
}
