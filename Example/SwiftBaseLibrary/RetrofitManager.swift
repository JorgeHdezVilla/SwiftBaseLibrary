

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
