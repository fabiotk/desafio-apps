//
//  NoticiasViewController+DataSource.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiasViewController+DataSource.h"

#import "UITableView+Support.h"

#import "CapaTableViewCell.h"

@implementation NoticiasViewController (DataSource)

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.capa.conteudos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CapaTableViewCell *cell = (CapaTableViewCell *)
    [tableView ig_registerAndReuseWithDifferentIdentifierForClass:[CapaTableViewCell class]
                                                        indexPath:indexPath];
    
    [cell setup:[self.capa.conteudos objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
