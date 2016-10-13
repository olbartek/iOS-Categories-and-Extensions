//
//  NSDate+DateFormat.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 02.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

extension NSDate {
    func createShortForm() -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .ShortStyle
        return dateFormatter.stringFromDate(self)
    }
    
    func convertToStringWithFormat(format: String) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.stringFromDate(self)
    }
}