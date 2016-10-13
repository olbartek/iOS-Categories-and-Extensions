//
//  NSDate+Comparison.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 12.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

func >(leftDate: NSDate, rightDate: NSDate) -> Bool {
    return leftDate.compare(rightDate) == .OrderedDescending
}

func >=(leftDate: NSDate, rightDate: NSDate) -> Bool {
    return leftDate.compare(rightDate) == .OrderedDescending || leftDate.compare(rightDate) == .OrderedSame
}

func <(leftDate: NSDate, rightDate: NSDate) -> Bool {
    return leftDate.compare(rightDate) == .OrderedAscending
}

func <=(leftDate: NSDate, rightDate: NSDate) -> Bool {
    return leftDate.compare(rightDate) == .OrderedAscending || leftDate.compare(rightDate) == .OrderedSame
}

extension NSDate {
    
    func dateWithNoTime() -> NSDate? {
        
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([.Year, .Month, .Day], fromDate: self)
        return calendar.dateFromComponents(dateComponents)
    }
    
    func isEqualWithNoTimeToDate(date: NSDate) -> Bool {
        guard let selfNoTime = self.dateWithNoTime(), dateNoTime = date.dateWithNoTime() else {
            return false
        }
        return selfNoTime.compare(dateNoTime) == .OrderedSame
    }
}