//
//  BOPlaceholderTextView.swift
//  greatkiddo
//
//  Created by Bartosz Olszanowski on 09.12.2015.
//  Copyright © 2015 Plus48. All rights reserved.
//

import UIKit

class BOPlaceholderTextView: UITextView {
    
    //MARK: Constants
    private struct Constants {
        static let CornerRadius     : CGFloat = 8
        static let BorderColor      = UIColor.lightGrayColor()
        static let BorderWidth      : CGFloat = 1
        static let PlaceholderColor = UIColor(red: 226.0 / 255.0, green: 226.0 / 255.0, blue: 226.0 / 255.0, alpha: 1.0)
    }
    
    //MARK: Properties
    var placeholder             : String? {
        didSet {
            if placeholderVisible {
                if let placeholderText = placeholder {
                    self.text   = placeholderText
                }
            }
        }
    }
    var placeholderVisible      = true

    //MARK: Early initialization
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate       = self
        self.textColor      = Constants.PlaceholderColor
    }
    
    //MARK: Drawing
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: Constants.CornerRadius)
        
        Constants.BorderColor.setStroke()
        path.lineWidth = Constants.BorderWidth
        path.stroke()
    }

}

extension BOPlaceholderTextView: UITextViewDelegate {
    func textViewDidBeginEditing(textView: UITextView) {
        self.text               = ""
        self.textColor          = UIColor.blackColor()
        placeholderVisible      = false
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if self.text.characters.count > 0 {
            placeholderVisible      = false
        } else {
            placeholderVisible      = true
            if let placeholderText = placeholder {
                self.textColor      = Constants.PlaceholderColor
                self.text           = placeholderText
            }
        }
    }
}
