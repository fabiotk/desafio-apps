//
//  NSDate+Support.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NSDate+Support.h"

@implementation NSDate (Support)

+ (NSDate *)dateFromString:(NSString *)string {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    return [dateFormat dateFromString:[string substringToIndex:10]];
    
}


- (NSString *)stringFromDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.calendar = [NSCalendar currentCalendar];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    return [dateFormatter stringFromDate:self];
}

@end
