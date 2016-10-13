//
//  NSDate+StartEnd.h
//
//  Created by Bartosz Olszanowski on 07.01.2016.
//

#import <Foundation/Foundation.h>

@interface NSDate (StartEnd)

- (NSDate *)startOfDay;
- (NSDate *)endOfDay;
- (NSDate *)dayAgo;
- (NSDate *)dayLater;
- (NSDate *)dateByAddingDays:(NSInteger)daysToAdd;

- (NSDate *)startOfWeek;
- (NSDate *)endOfWeek;
- (NSDate *)weekAgo;
- (NSDate *)weekLater;

- (NSDate *)startOfMonth;
- (NSDate *)endOfMonth;
- (NSDate *)monthAgo;
- (NSDate *)monthLater;
- (NSDate *)dateByAddingMonths:(NSInteger)monthsToAdd;

- (NSDate *)startOfYear;
- (NSDate *)endOfYear;
- (NSDate *)yearAgo;
- (NSDate *)yearLater;
- (NSDate *)dateByAddingYears:(NSInteger)yearsToAdd;

@end
