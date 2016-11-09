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
