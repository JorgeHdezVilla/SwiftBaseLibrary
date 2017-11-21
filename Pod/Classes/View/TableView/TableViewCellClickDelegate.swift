//
//  TableViewCellClickDelegate.swift
//  EstrategiaDigital
//
//  Created by Charls Salazar on 27/06/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

import UIKit

public protocol TableViewCellClickDelegate: NSObjectProtocol {
    func onTableViewCellClick(item: NSObject, cell : UITableViewCell)
}
