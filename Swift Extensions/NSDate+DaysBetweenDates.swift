//
//  NSDate+DaysBetweenDates.swift
//  greatkiddo
//
//  Created by Błażej Chwiećko on 30/11/15.
//  Copyright © 2015 Plus48. All rights reserved.
//

import UIKit

extension NSDate {
    
    func differenceInDaysWithDate(date: NSDate) -> Int {
        let calendar: NSCalendar = NSCalendar.currentCalendar()
        
        let date1 = calendar.startOfDayForDate(self)
        let date2 = calendar.startOfDayForDate(date)
        
        let components = calendar.components(.Day, fromDate: date1, toDate: date2, options: [])
        return components.day
    }
    
}