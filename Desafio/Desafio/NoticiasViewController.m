//
//  ViewController.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiasViewController.h"

#import "APINoticias.h"

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
    [self fetchData];
}

#pragma mark - Private

- (void)fetchData {
    [self.api fetchCapa:^(Capa *capa) {
        
    } errorBlock:^{
        
    }];
}

@end
