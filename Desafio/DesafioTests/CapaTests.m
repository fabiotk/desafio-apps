//
//  CapaTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Capa.h"

@interface CapaTests : XCTestCase

@end

@implementation CapaTests

- (void)testShouldVerifyProperties {
    //
    Capa *capa = [[Capa alloc] init];
    
    NSDictionary *dictionary = @{ @"produto": @"O Globo",
                                  @"conteudos": @[]};
    
    //
    capa = [[Capa alloc] initWithDictionary:dictionary];
    
    //
    XCTAssertEqualObjects(capa.capa, @"O Globo");
    XCTAssertNotNil(capa.conteudos);
}



@end
