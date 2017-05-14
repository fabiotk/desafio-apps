//
//  NSDate+Support.h
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Support)

+ (NSDate *)dateFromString:(NSString *)string;
- (NSString *)stringFromDate;

@end
