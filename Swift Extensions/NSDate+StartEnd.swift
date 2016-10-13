//
//  NSDate+StartEnd.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 08.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

let kAlmostADay: NSTimeInterval = 24 * 60 * 60 - 1

extension NSDate {
    var startOfDay: NSDate {
        return NSCalendar.currentCalendar().startOfDayForDate(self)
    }
    
    var endOfDay: NSDate {
        let components = NSDateComponents()
        components.day = 1
        components.second = -1
        if let endDay = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: startOfDay, options: NSCalendarOptions()) {
            return endDay
        } else {
            return startOfDay.dateByAddingTimeInterval(kAlmostADay)
        }
    }
    
    func startOfMonth() -> NSDate? {
        
        let calendar = NSCalendar.currentCalendar()
        let currentDateComponents = calendar.components([.Year, .Month], fromDate: self)
        let startOfMonth = calendar.dateFromComponents(currentDateComponents)
        
        return startOfMonth
    }
    
    func dateByAddingMonths(monthsToAdd: Int) -> NSDate? {
        
        let calendar = NSCalendar.currentCalendar()
        let months = NSDateComponents()
        months.month = monthsToAdd
        let date = calendar.dateByAddingComponents(months, toDate: self, options: [])
        return date 
    }
    
    func endOfMonth() -> NSDate? {
        
        let calendar = NSCalendar.currentCalendar()
        if let plusOneMonthDate = dateByAddingMonths(1) {
            let plusOneMonthDateComponents = calendar.components([.Year, .Month], fromDate: plusOneMonthDate)
            
            let endOfMonth = calendar.dateFromComponents(plusOneMonthDateComponents)?.dateByAddingTimeInterval(-1)
            
            return endOfMonth
        }
        
        return nil
    }
}