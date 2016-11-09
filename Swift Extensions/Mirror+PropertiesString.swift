import Foundation

extension Mirror {
    var propertiesString: String {
        get {
            var string = ""
            for case let (name?, value) in self.children {
                string = string + "\n\(name) = \(value)"
            }
            string = string + "\n"
            return string
        }
    }
}
