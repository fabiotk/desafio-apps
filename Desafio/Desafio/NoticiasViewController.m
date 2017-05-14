//
//  ViewController.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiasViewController.h"

#import "APINoticias.h"

#import "NoticiasViewController+DataSource.h"

@interface NoticiasViewController ()

@property (strong, nonatomic) APINoticias *api;

@end

@implementation NoticiasViewController

#pragma mark - Getter

- (APINoticias *)api {
    if (!_api) {
        _api = [[APINoticias alloc] init];
    }
    return _api;
}

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addLayout];
    [self addProtocols];
    [self fetchData];
    self.title = @"O Globo";
}

#pragma mark - Private

- (void)addLayout {
    self.tableView.estimatedRowHeight = 90.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.tableFooterView = [UIView new];
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
}

- (void)addProtocols {
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)fetchData {
    [self.api fetchCapa:^(Capa *capa) {
        self.model = capa;
        [self.tableView reloadData];
    } errorBlock:^{
        NSLog(@"Error");
    }];
}

@end
