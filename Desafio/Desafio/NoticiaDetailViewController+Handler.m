//
//  NoticiaDetailViewController+Handler.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiaDetailViewController+Handler.h"

@implementation NoticiaDetailViewController (Handler)

- (void)shareButtonTouched {
    NSArray *activities = @[self.model.titulo, [NSURL URLWithString:self.model.url]];
    UIActivityViewController *activityViewController =
    [[UIActivityViewController alloc] initWithActivityItems:activities
                                      applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
}

@end
