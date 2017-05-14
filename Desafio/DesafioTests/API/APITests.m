//
//  APITests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <AFNetworking/AFNetworking.h>

#import "APINoticias.h"
#import "Capa.h"

@interface APITests : XCTestCase

@end

@implementation APITests

- (void)shouldVerifyIFNetworkingWillBeCalled {
    id mockRequest = OCMPartialMock([[AFHTTPSessionManager manager] init]);

    OCMExpect([mockRequest GET:[OCMArg any]
                    parameters:[OCMArg any]
                      progress:[OCMArg any]
                       success:[OCMArg any]
                       failure:[OCMArg any]]);

    [[[APINoticias alloc] init] fetchCapa:nil errorBlock:nil];

    OCMVerifyAll(mockRequest);
}

@end
