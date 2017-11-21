//
//  ToDouble.swift
//  EstrategiaDigital
//
//  Created by Charls Salazar on 03/11/17.
//  Copyright © 2017 Charls Salazar. All rights reserved.
//

extension String {
    func toDouble() -> Double? {
        return NumberFormatter().number(from: self)?.doubleValue
    }
}
