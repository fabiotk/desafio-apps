//
//  NoticiaDetailViewController+HandlerTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "NoticiaDetailViewController+Handler.h"

@interface NoticiaDetailViewController_HandlerTests : XCTestCase

@end

@implementation NoticiaDetailViewController_HandlerTests

- (void)testShouldVerifyPresentShareController {
    //
    Conteudo *model = [[Conteudo alloc] init];
    model.titulo = @"titulo";
    model.url = @"url";
    
    NoticiaDetailViewController *viewController = [NoticiaDetailViewController controllerInstanceFromStoryboard];
    [viewController setup:model];
    [viewController view];
    
    id viewControllerMock = OCMPartialMock(viewController);
    
    OCMExpect([viewControllerMock presentViewController:[OCMArg isKindOfClass:[UIActivityViewController class]]
                                               animated:[OCMArg any]
                                             completion:[OCMArg any]]);
    //
    [viewController shareButtonTouched];
    
    //
    OCMVerify(viewControllerMock);
    
    [viewControllerMock stopMocking];
}

@end
