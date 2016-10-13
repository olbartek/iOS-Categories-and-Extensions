//
//  String+DateFormat.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 02.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

extension String {
    func convertToDateWithFormat(format: String) -> NSDate? {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        if let date = dateFormatter.dateFromString(self) {
            return date
        } else {
            return nil
        }
    }
}