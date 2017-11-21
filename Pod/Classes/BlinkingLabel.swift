//
//  BlinkingLabel.swift
//  Pods-SwiftBaseLibrary_Example
//
//  Created by Jorge Hdez VIlla on 21/11/17.
//

import UIKit

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = UIViewAnimationOptions(rawValue: UIViewAnimationOptions.RawValue(UInt8(UIViewAnimationOptions.repeat.rawValue) | UInt8(UIViewAnimationOptions.autoreverse.rawValue)))
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
