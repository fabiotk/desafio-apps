//
//  NoticiaDetailTableViewController.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiaDetailViewController.h"
#import "NoticiaDetailViewController+View.h"

@implementation NoticiaDetailViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addDataToView];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

#pragma mark - Initialize

- (void)setup:(Conteudo *)conteudo {
    self.model = conteudo;
}

#pragma mark - Loadable

+ (instancetype)controllerInstanceFromStoryboard {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    UIViewController *controller =
    [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([NoticiaDetailViewController class])];
    
    if([controller isKindOfClass:[NoticiaDetailViewController class]]) {
        return (NoticiaDetailViewController *)controller;
        
    } else {
        NSAssert(NO, @"Não foi possível instanciar NoticiaDetailViewController \
                 dentro do Storyboard Main");
        return nil;
    }
}

@end
