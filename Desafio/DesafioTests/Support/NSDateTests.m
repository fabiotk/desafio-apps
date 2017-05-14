//
//  NSDateTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSDate+Support.h"

@interface NSDateTests : XCTestCase

@end

@implementation NSDateTests

- (void)testShouldVerifyTheTransformationFromStringToDate {
    NSDate *date = [NSDate dateFromString:@"2010-10-05"];
    XCTAssertNotNil(date);
}

- (void)testShouldVerifyTheTransformationFromDateToString {
    NSDate *date = [NSDate dateFromString:@"2010-10-05"];
    NSString *stringDate = [date stringFromDate];
    XCTAssertEqualObjects(stringDate, @"05/10/2010");
}

@end
