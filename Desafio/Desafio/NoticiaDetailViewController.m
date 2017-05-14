//
//  NoticiaDetailTableViewController.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiaDetailViewController.h"
#import "NoticiaDetailViewController+View.h"
#import "NoticiaDetailViewController+Handler.h"

@implementation NoticiaDetailViewController

#pragma mark - Initialize

- (void)setup:(Conteudo *)conteudo {
    self.model = conteudo;
}

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addDataToView];
    [self addLayout];
    [self addShareButton];
}

#pragma mark - Private

- (void)addLayout {
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

- (void)addShareButton {
    UIBarButtonItem *shareButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                  target:self
                                                  action:@selector(shareButtonTouched)];
    self.navigationItem.rightBarButtonItem = shareButton;
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
