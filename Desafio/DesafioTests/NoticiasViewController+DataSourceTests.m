//
//  NoticiasViewController+DataSourceTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NoticiasViewController+DataSource.h"

#import "CapaTableViewCell.h"
#import "NoticiaTableViewCell.h"

@interface NoticiasViewController (Private)

- (CapaTableViewCell *)tableView:(UITableView *)tableView
                     cellForCapa:(NSIndexPath *)indexPath;

- (NoticiaTableViewCell *)tableView:(UITableView *)tableView
                     cellForNoticia:(NSIndexPath *)indexPath;

@end

@interface NoticiasViewController_DataSourceTests : XCTestCase

@property (strong, nonatomic) NoticiasViewController *viewController;

@end

@implementation NoticiasViewController_DataSourceTests

- (void)setUp {
    [super setUp];
    self.viewController = [NoticiasViewController controllerInstanceFromStoryboard];
    [self.viewController view];
}

- (void)testShouldReturnCapaCell {
    id cell = [self.viewController tableView:self.viewController.tableView
                                 cellForCapa:[NSIndexPath indexPathForRow:0 inSection:0]];
    XCTAssertTrue([cell isKindOfClass:[CapaTableViewCell class]]);
}


- (void)testShouldReturnNoticiaCell {
    id cell = [self.viewController tableView:self.viewController.tableView
                              cellForNoticia:[NSIndexPath indexPathForRow:0 inSection:0]];
    XCTAssertTrue([cell isKindOfClass:[NoticiaTableViewCell class]]);
}

@end
