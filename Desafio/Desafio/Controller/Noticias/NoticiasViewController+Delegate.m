//
//  NoticiasViewController+Delegate.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiasViewController+Delegate.h"

#import "NoticiasViewController+Handler.h"

#import "Conteudo.h"

@implementation NoticiasViewController (Delegate)

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Conteudo *conteudo = [self.model.conteudos objectAtIndex:indexPath.row];
    [self presentDetailViewController:conteudo];
}

@end
