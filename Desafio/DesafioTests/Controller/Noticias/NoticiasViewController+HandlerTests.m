//
//  NoticiasViewController+HandlerTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "NoticiaDetailViewController.h"
#import "NoticiasViewController+Handler.h"

@interface NoticiasViewController_HandlerTests : XCTestCase

@end

@implementation NoticiasViewController_HandlerTests

- (void)testShouldVerifyPresentNoticiasDetail {
    
    NoticiasViewController *viewController = [NoticiasViewController controllerInstanceFromStoryboard];
    
    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithRootViewController:viewController];
    
    id navigationMock = OCMPartialMock(navigationController);
    
    OCMExpect([navigationMock pushViewController:[OCMArg isKindOfClass:[NoticiaDetailViewController class]]
                                        animated:YES]);
    
    [viewController presentDetailViewController:nil];
    
    OCMVerify(navigationMock);
    
    [navigationMock stopMocking];
}

@end
