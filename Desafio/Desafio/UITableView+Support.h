//
//  UITableView+Support.h
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Support)

- (UITableViewCell *)ig_registerAndReuseWithDifferentIdentifierForClass:(id)tableViewCellClass
                                                              indexPath:(NSIndexPath *)indexPath;

@end
