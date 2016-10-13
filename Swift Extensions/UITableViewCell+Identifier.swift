//
//  UITableViewCell+Identifier.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 09.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

extension UITableViewCell {
    class func identifier() -> String! {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}
