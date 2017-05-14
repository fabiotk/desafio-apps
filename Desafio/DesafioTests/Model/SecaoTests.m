//
//  SecaoTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Secao.h"

@interface SecaoTests : XCTestCase

@property (strong, nonatomic) Secao *model;

@end

@implementation SecaoTests

- (void)setUp {
    [super setUp];
    NSDictionary *dictionary = @{ @"nome": @"Ting",
                                  @"url": @"www.ting.com.br" };
    
    self.model = [[Secao alloc] initWithDictionary:dictionary];
}

- (void)testShouldVerifyProperties {
    XCTAssertEqual(self.model.nome, @"Ting");
    XCTAssertEqual(self.model.url, @"www.ting.com.br");
}

@end
