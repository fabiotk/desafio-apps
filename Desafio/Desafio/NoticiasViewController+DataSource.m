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
#import "NoticiaTableViewCell.h"

@implementation NoticiasViewController (DataSource)

#pragma mark - Private

- (CapaTableViewCell *)tableView:(UITableView *)tableView
                     cellForCapa:(NSIndexPath *)indexPath {
    CapaTableViewCell *cell = (CapaTableViewCell *)
    [tableView ig_registerAndReuseWithDifferentIdentifierForClass:[CapaTableViewCell class]
                                                        indexPath:indexPath];
    
    [cell setup:[self.capa.conteudos objectAtIndex:indexPath.row]];
    
    return cell;
}

- (NoticiaTableViewCell *)tableView:(UITableView *)tableView
                     cellForNoticia:(NSIndexPath *)indexPath {
    NoticiaTableViewCell *cell = (NoticiaTableViewCell *)
    [tableView ig_registerAndReuseWithDifferentIdentifierForClass:[NoticiaTableViewCell class]
                                                        indexPath:indexPath];
    
    [cell setup:[self.capa.conteudos objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.capa.conteudos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    id cell;
    
    if (indexPath.row == 0) {
        cell = [self tableView:tableView cellForCapa:indexPath];
    } else {
        cell = [self tableView:tableView cellForNoticia:indexPath];
    }
    
    return cell;
}
@end
