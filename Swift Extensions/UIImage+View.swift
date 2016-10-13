//
//  UIImage+View.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 20.11.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import Foundation
import QuartzCore

extension UIImage {
    class func imageWithView(view: UIView) -> UIImage? {
        var image: UIImage? = nil
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 0)
        if let context = UIGraphicsGetCurrentContext() {
            view.layer.renderInContext(context)
            image = UIGraphicsGetImageFromCurrentImageContext()
        }
        UIGraphicsEndImageContext()
        return image
    }
}

