//
//  BaseTabBarViewController.swift
//  Ventas TotalPlay
//
//  Created by Daniel García Aldynamic varado on 07/11/16.
//  Copyright © 2016 TotalPlay. All rights reserved.
//

import UIKit

open class BaseTabBarViewController: UITabBarController {

    @objc dynamic var presenter : BasePresenter?
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func onViewControllerResult() {
        
    }
    
    func onViewControllerResult(params: [String : String]?) {
        
    }

}
