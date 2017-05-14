//
//  NoticiaDetailTableViewController.h
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Loadable.h"

#import "Conteudo.h"

@interface NoticiaDetailViewController : UIViewController <Loadable>

@property (weak, nonatomic) IBOutlet UILabel *tituloLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTituloLabel;
@property (weak, nonatomic) IBOutlet UILabel *autorLabel;
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;
@property (weak, nonatomic) IBOutlet UIImageView *fotoImageView;
@property (weak, nonatomic) IBOutlet UILabel *legendaFotoLabel;
@property (weak, nonatomic) IBOutlet UILabel *textoLabel;

@property (strong, nonatomic) Conteudo *model;

- (void)setup:(Conteudo *)conteudo;

@end
