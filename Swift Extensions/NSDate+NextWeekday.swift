import UIKit

extension NSDate {
    class func nextWeekday(weekday: Int) -> NSDate? {
        if let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian) {
            let dateNow = NSDate()
            let components = calendar.components([.Year, .Month, .WeekOfMonth, .Weekday], fromDate: dateNow)
            let weekdayToday = components.weekday
            let daysToWeekday = ((7 + weekday) - weekdayToday) % 7
            let nextWeekday = dateNow.dateByAddingTimeInterval(k24hourInSeconds * Double(daysToWeekday))
            return nextWeekday
        }
        return nil
    }
    func dayWithSpecificTime(time: NSDate) -> NSDate? {
        let dateComponents = NSCalendar.currentCalendar().components([.Year, .Month, .Day], fromDate: self)
        let timeComponents = NSCalendar.currentCalendar().components([.Hour, .Minute], fromDate: time)
        
        let calender            = NSCalendar.currentCalendar()
        let components          = NSDateComponents()
        
        components.year         = dateComponents.year
        components.month        = dateComponents.month
        components.day          = dateComponents.day
        components.hour         = timeComponents.hour
        components.minute       = timeComponents.minute
        calender.timeZone       = NSTimeZone.defaultTimeZone()
        if let dateWithTime     = calender.dateFromComponents(components) {
            return dateWithTime
        }
        return nil
    }
}
