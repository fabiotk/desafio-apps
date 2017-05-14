//
//  CapaTableViewCell.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "CapaTableViewCell.h"

#import "Secao.h"
#import "Conteudo.h"
#import "Imagem.h"

#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

@implementation CapaTableViewCell

#pragma mark - Public

- (void)setup:(Conteudo *)conteudo {
    self.secaoLabel.text = conteudo.secao.nome;
    self.legendaLabel.text = conteudo.titulo;
    
    Imagem *imagem = conteudo.imagens.firstObject;
    [self.fotoImageView setPin_updateWithProgress:YES];
    [self.fotoImageView pin_setImageFromURL:[NSURL URLWithString:imagem.url]];
}

@end
