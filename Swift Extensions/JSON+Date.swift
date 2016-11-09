//
//  JSON+Date.swift
//  infoBTC
//
//  Created by Bartosz Olszanowski on 24/10/2016.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import SwiftyJSON

extension JSON {
    public var date: Date? {
        get {
            if let str = self.string {
                return JSON.jsonDateFormatter.date(from: str)
            }
            return nil
        }
    }
    
    public var dateValue: Date {
        get {
            if let str = self.string, let date = JSON.jsonDateFormatter.date(from: str) {
                return date
            }
            return Date()
        }
    }
    
    private static let jsonDateFormatter: DateFormatter = {
        let fmt = DateFormatter()
        fmt.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        fmt.timeZone = TimeZone(secondsFromGMT: 0)
        return fmt
    }()
}
