//
//  CapaTableViewCell.h
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Conteudo;

@interface CapaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *fotoImageView;
@property (weak, nonatomic) IBOutlet UILabel *secaoLabel;
@property (weak, nonatomic) IBOutlet UILabel *legendaLabel;

- (void)setup:(Conteudo *)conteudo;

@end
