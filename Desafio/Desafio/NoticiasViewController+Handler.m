//
//  NoticiasViewController+Handler.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiasViewController+Handler.h"

#import "NoticiaDetailViewController.h"

@implementation NoticiasViewController (Handler)

- (void)presentDetailViewController:(Conteudo *)conteudo {
    NoticiaDetailViewController *controller = [NoticiaDetailViewController controllerInstanceFromStoryboard];
    [controller setup:conteudo];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
