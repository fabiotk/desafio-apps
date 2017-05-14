//
//  ViewController.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Capa.h"

#import "Loadable.h"

@interface NoticiasViewController : UITableViewController <Loadable>

@property (strong, nonatomic) Capa *model;

@end

