//
//  NoticiaTableViewCell.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "NoticiaTableViewCell.h"

#import "Secao.h"
#import "Conteudo.h"
#import "Imagem.h"

#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

@implementation NoticiaTableViewCell

#pragma mark - Public

- (void)setup:(Conteudo *)conteudo {
    self.secaoLabel.text = conteudo.secao.nome;
    self.legendaLabel.text = conteudo.titulo;
    
    Imagem *imagem = conteudo.imagens.firstObject;
    
    if (!imagem) {
        [self.fotoImageView removeFromSuperview];
    }
    
    [self.fotoImageView setPin_updateWithProgress:YES];
    [self.fotoImageView pin_setImageFromURL:[NSURL URLWithString:imagem.url]];
}

@end
