import Foundation

extension UITableViewCell {
    class func identifier() -> String! {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}
