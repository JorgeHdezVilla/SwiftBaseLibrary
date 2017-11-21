//
//  DateUtils.swift
//  VentasTotalPlayiOS
//
//  Created by Jorge Hdez Villa on 03/03/17.
//  Copyright © 2017 TotalPlay. All rights reserved.
//

import UIKit

class DateUtils: NSObject {
    
    static var dateFormat : String = "d/M/yyyy"

    class func toString(date : Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.string(from: date)
    }
    
    class func getDateNow() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.string(from: date)
    }
    
    class func toDate(date : String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.date(from: date)!
    }
    
    class func toString(format : String, date : Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = NSTimeZone(name: "UTC") as TimeZone!
        return formatter.string(from: date)
    }
    
    class func addingDays(date : Date, value: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: value, to: date)!
    }
    
    class func getDate(date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        dateFormatter.timeZone = NSTimeZone(name: "UTC")! as TimeZone
        
        guard let date = dateFormatter.date(from: date) else {
            assert(false, "no date from string")
            return ""
        }
        
        dateFormatter.dateFormat = "yyyy/MM/dd"
        dateFormatter.timeZone = NSTimeZone(name: "UTC")! as TimeZone
        let timeStamp = dateFormatter.string(from: date)
        
        return timeStamp
    }
   
}
