//
//  BasePresenter.swift
//  EstrategiaDigital
//
//  Created by Charls Salazar on 27/06/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit

open class BasePresenter: NSObject {
    
    public var mViewController : BaseViewController
    
    public init(viewController : BaseViewController){
        self.mViewController = viewController
    }
    
    open func viewDidLoad(){
    }
    
    open func viewWillAppear(){
    }
    
    open func viewDidAppear(){
    }
    
    open func viewWillDisappear(){
    }
    
    open func viewDidDisappear(){
    }
    
    open func viewDidUnload(){
    }
    
}

