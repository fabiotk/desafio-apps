//
//  NoticiaDetailViewController+View.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

#import "NoticiaDetailViewController+View.h"

#import "Secao.h"
#import "Imagem.h"

@implementation NoticiaDetailViewController (View)

- (void)addDataToView {
    self.title = self.model.secao.nome.uppercaseString;
    self.tituloLabel.text = self.model.titulo;
    self.subTituloLabel.text = self.model.subTitulo;
    self.dataLabel.text = self.model.publicadoEm;
    self.textoLabel.text = self.model.texto;
    [self addAutorText];
    [self addImageAndText];
}

- (void)addAutorText {
    NSString *stringAppend = [self.model.autores.firstObject uppercaseString];
    NSString *stringInicial = @"POR ";
    
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@%@", stringInicial, stringAppend]];
    
    NSRange selectedRange = NSMakeRange(stringInicial.length, stringAppend.length);
    
    [attrString beginEditing];
    
    [attrString addAttribute:NSForegroundColorAttributeName
                       value:[UIColor colorWithRed:27/255.0 green:147/255.0 blue:195/255.0  alpha:1]
                       range:selectedRange];
    
    [attrString endEditing];
    
    self.autorLabel.attributedText = attrString;
}

- (void)addImageAndText {
    Imagem *imagem = self.model.imagens.firstObject;
    
    NSString *legenda = [NSString stringWithFormat:@"%@. Foto:%@", imagem.legenda, imagem.fonte];
    self.legendaFotoLabel.text = legenda;
    
    if (!imagem) {
        [self.fotoImageView removeFromSuperview];
        [self.legendaFotoLabel removeFromSuperview];
    }
    
    [self.fotoImageView setPin_updateWithProgress:YES];
    [self.fotoImageView pin_setImageFromURL:[NSURL URLWithString:imagem.url]];
}

@end
