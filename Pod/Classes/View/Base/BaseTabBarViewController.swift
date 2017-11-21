//
//  BaseTabBarViewController.swift
//  Ventas TotalPlay
//
//  Created by Daniel García Aldynamic varado on 07/11/16.
//  Copyright © 2016 TotalPlay. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    dynamic var presenter : BasePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func onViewControllerResult() {
        
    }
    
    func onViewControllerResult(params: [String : String]?) {
        
    }

}
