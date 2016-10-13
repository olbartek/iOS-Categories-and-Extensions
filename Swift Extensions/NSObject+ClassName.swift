//
//  NSObject+ClassName.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 27.10.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation

public extension NSObject {
    public class var nameOfClass: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    public var nameOfClass: String {
        return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
    }
}