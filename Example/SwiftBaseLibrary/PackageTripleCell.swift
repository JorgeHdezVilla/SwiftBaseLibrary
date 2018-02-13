

import UIKit
import SwiftBaseLibrary

class PackageTripleCell: BaseTableViewCell {
    
    @IBOutlet weak var mContentView: UIView!
    @IBOutlet weak var mTitleLabel: UILabel!
    
    @IBOutlet weak var mPhoneImageView: UIImageView!
    @IBOutlet weak var mWifiImageView: UIImageView!
    @IBOutlet weak var mTvImageView: UIImageView!
    
    
    override func pupulate(object :NSObject) {
        UIView.animate(withDuration: 0.3) {
            self.mContentView.backgroundColor = nil
        }
    }
    
    override func pupulateSelected(object :NSObject) {
        UIView.animate(withDuration: 0.3) {
            
        }
    }
    
    override func toString() -> String{
        return "PackageTripleCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        mContentView.layer.borderWidth = 1
        mContentView.layer.cornerRadius = 4
        
        mPhoneImageView.image = mPhoneImageView.image?.withRenderingMode(.alwaysTemplate)
    
        
        mWifiImageView.image = mWifiImageView.image?.withRenderingMode(.alwaysTemplate)
    
        
        mTvImageView.image = mTvImageView.image?.withRenderingMode(.alwaysTemplate)
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
