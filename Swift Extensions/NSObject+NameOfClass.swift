import Foundation

protocol ClassNameConvertible {
    var className: String { get }
    static var className: String { get }
}

extension NSObject: ClassNameConvertible {
    var className: String {
        return String(describing: type(of: self))
    }
    static var className: String {
        return String(describing: self)
    }
}
