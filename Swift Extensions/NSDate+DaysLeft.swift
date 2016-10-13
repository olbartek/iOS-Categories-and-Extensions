//
//  NSDate+DaysLeft.swift
//  greatkiddo
//
//  Created by Błażej Chwiećko on 25/11/15.
//  Copyright © 2015 Plus48. All rights reserved.
//

import UIKit

extension NSDate {
    
    func birthdayInCurrentYear() -> NSDate? {
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([.Month, .Day], fromDate: self)
        dateComponents.year = calendar.components([.Year], fromDate: NSDate()).year
        return calendar.dateFromComponents(dateComponents)
    }
    
    func birthdayNextYear() -> NSDate? {
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([.Month, .Day], fromDate: self)
        dateComponents.year = calendar.components([.Year], fromDate: NSDate()).year + 1
        return calendar.dateFromComponents(dateComponents)
    }
    
    func daysLelft() -> Int? {
        if let birthDate = self.birthdayInCurrentYear(), nextBirthday = birthDate.birthdayNextYear(){
            if birthDate > NSDate() {
                let difference = NSCalendar.currentCalendar().components(.Day, fromDate: NSDate(), toDate: birthDate, options: [])
                return difference.day
            } else {
                let difference = NSCalendar.currentCalendar().components(.Day, fromDate: NSDate(), toDate: nextBirthday, options: [])
                return difference.day
            }
        }
        return nil
    }
}
