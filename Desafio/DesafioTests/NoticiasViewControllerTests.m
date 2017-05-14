//
//  NoticiasViewControllerTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "NoticiasViewController.h"

@interface NoticiasViewController (Private)

- (void)addLayout;
- (void)addProtocols;
- (void)fetchData;

@end

@interface NoticiasViewControllerTests : XCTestCase

@property (strong, nonatomic) NoticiasViewController *viewController;

@end

@implementation NoticiasViewControllerTests

- (void)setUp {
    [super setUp];
    self.viewController = [NoticiasViewController controllerInstanceFromStoryboard];
}

- (void)testShouldVerifyProperties {
    XCTAssertNotNil(self.viewController.tableView);
    XCTAssertNotNil(self.viewController.tableView.delegate);
    XCTAssertNotNil(self.viewController.tableView.dataSource);
}

- (void)testShouldValidTitle {
    //
    [self.viewController viewDidLoad];
    
    //
    XCTAssertEqualObjects(self.viewController.title, @"O Globo");
}

- (void)testShouldValidTheViewDidLoadFlow {
    //
    id controllerMock = [OCMockObject partialMockForObject:self.viewController];
    
    [[controllerMock expect] addLayout];
    [[controllerMock expect] addProtocols];
    [[controllerMock expect] fetchData];
    
    //
    [self.viewController viewDidLoad];
    
    //
    [controllerMock verify];
    [controllerMock stopMocking];
}

- (void)testShouldVerifyInitialize {
    XCTAssertEqual([NoticiasViewController controllerInstanceFromStoryboard].class, [NoticiasViewController class]); 
}


@end
