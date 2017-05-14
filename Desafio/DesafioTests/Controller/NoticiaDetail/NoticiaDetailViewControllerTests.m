//
//  NoticiaDetailViewControllerTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "NoticiaDetailViewController.h"

@interface NoticiaDetailViewController ()

- (void)addLayout;

- (void)addShareButton;

@end

@interface NoticiaDetailViewControllerTests : XCTestCase

@property (strong, nonatomic) NoticiaDetailViewController *viewController;

@end

@implementation NoticiaDetailViewControllerTests

- (void)setUp {
    [super setUp];
    self.viewController = [NoticiaDetailViewController controllerInstanceFromStoryboard];
}


- (void)testShouldValidTheViewDidLoadFlow {
    //
    id controllerMock = [OCMockObject partialMockForObject:self.viewController];
    
    [[controllerMock expect] addLayout];
    [[controllerMock expect] addShareButton];
    
    //
    [self.viewController viewDidLoad];
    
    //
    [controllerMock verify];
    [controllerMock stopMocking];
}

- (void)testShouldVerifyInitialize {
    XCTAssertEqual([NoticiaDetailViewController controllerInstanceFromStoryboard].class, [NoticiaDetailViewController class]);
}

@end
