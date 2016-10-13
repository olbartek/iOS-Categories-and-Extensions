//
//  NSDate+StartEnd.m
//
//  Created by Bartosz Olszanowski on 07.01.2016.
//

#import "NSDate+StartEnd.h"

@implementation NSDate (StartEnd)

#pragma mark - Day

- (NSDate *)startOfDay {
    return [[NSCalendar currentCalendar] startOfDayForDate:self];
}

- (NSDate *)endOfDay {
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    comps.day               = 1;
    comps.second            = -1;
    return [[NSCalendar currentCalendar] dateByAddingComponents:comps toDate: [[NSDate date] startOfDay] options:0];
}

- (NSDate *)dayAgo {
    return [self addDays:-1];
}

- (NSDate *)dayLater {
    return [self addDays:1];
}

- (NSDate *)dateByAddingDays:(NSInteger)daysToAdd {
    return [self addDays:daysToAdd];
}

#pragma mark - Week

- (NSDate *)startOfWeek {
    int weekDay                     = [[self getWeekDay] intValue];
    int weekStartIndex              = 0;
    NSInteger gap                   = (weekStartIndex <=  weekDay) ?  weekDay  : ( 7 + weekDay );
    NSInteger day                   = weekStartIndex - gap;
    
    return [[NSCalendar currentCalendar] startOfDayForDate:[self addDays:day]];
}

-(NSNumber *)getWeekDay
{
    NSCalendar *currentCalendar     = [NSCalendar currentCalendar];
    NSDateComponents *comps         = [currentCalendar components:NSCalendarUnitWeekday fromDate:self];
    return [NSNumber numberWithInteger:([comps weekday] - 1)];
}

static NSTimeInterval const kAlmostAWeek = 60 * 60 * 24 * 7 - 1;

- (NSDate *)endOfWeek {
    return [[self startOfWeek] dateByAddingTimeInterval:kAlmostAWeek];
}

- (NSDate *)weekAgo {
    return [self addDays:-7];
}

- (NSDate *)weekLater {
    return [self addDays:7];
}

- (NSDate *)addDays:(NSInteger) numOfDays {
    NSDateComponents *dayComponent  = [[NSDateComponents alloc] init];
    dayComponent.day                = numOfDays;
    NSCalendar *currentCalendar     = [NSCalendar currentCalendar];
    return [currentCalendar dateByAddingComponents:dayComponent toDate:self options:0];
}

#pragma mark - Month

- (NSDate *)startOfMonth {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *comps     = [currentCalendar components:NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self];
    NSDate *currMonthStartDate  = [currentCalendar dateFromComponents:comps];
    return [currentCalendar startOfDayForDate:currMonthStartDate];
}

- (NSDate *)dateByAddingMonths:(NSInteger) monthsToAdd {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *comps     = [[NSDateComponents alloc] init];
    comps.month                 = monthsToAdd;
    return [currentCalendar dateByAddingComponents:comps toDate:self options:0];
}

- (NSDate *)endOfMonth {
     NSCalendar *currentCalendar    = [NSCalendar currentCalendar];
    NSDate *plusOneMonth            = [self dateByAddingMonths:1];
    NSDateComponents *comps         = [currentCalendar components:NSCalendarUnitMonth | NSCalendarUnitYear fromDate:plusOneMonth];
    return [[currentCalendar dateFromComponents:comps] dateByAddingTimeInterval:-1];
}

- (NSDate *)monthAgo {
    return [self dateByAddingMonths:-1];
}

- (NSDate *)monthLater {
    return [self dateByAddingMonths:1];
}

#pragma mark - Year

- (NSDate *)startOfYear {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *comps     = [currentCalendar components: NSCalendarUnitYear fromDate:self];
    return [currentCalendar dateFromComponents:comps];
}

- (NSDate *)dateByAddingYears:(NSInteger) yearsToAdd {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *comps     = [[NSDateComponents alloc] init];
    comps.year                  = yearsToAdd;
    return [currentCalendar dateByAddingComponents:comps toDate:self options:0];
}

- (NSDate *)endOfYear {
    NSCalendar *currentCalendar     = [NSCalendar currentCalendar];
    NSDate *plusOneYear             = [self dateByAddingYears:1];
    NSDateComponents *comps         = [currentCalendar components: NSCalendarUnitYear fromDate:plusOneYear];
    return [[currentCalendar dateFromComponents:comps] dateByAddingTimeInterval:-1];
}

- (NSDate *)yearAgo {
    return [self dateByAddingYears:-1];
}

- (NSDate *)yearLater {
    return [self dateByAddingYears:1];
}

@end
