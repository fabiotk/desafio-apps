//
//  UITableView+Support.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "UITableView+Support.h"

@implementation UITableView (Support)

- (UITableViewCell *)ig_registerAndReuseWithDifferentIdentifierForClass:(id)tableViewCellClass
                                                               indexPath:(NSIndexPath *)indexPath {
    
    NSString *className = NSStringFromClass([tableViewCellClass class]);
    
    NSString *differentIdentifier =
    [NSString stringWithFormat:@"%@%ld", className, (long)indexPath.row];
    
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:differentIdentifier];
    
    if (!cell) {
        
        [self registerNib:[UINib nibWithNibName:className bundle:nil]
   forCellReuseIdentifier:differentIdentifier];
        
        cell = [self dequeueReusableCellWithIdentifier:differentIdentifier];
        
    }
    
    return cell;
}


@end
