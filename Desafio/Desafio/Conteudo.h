//
//  Conteudo.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Secao;

@interface Conteudo : NSObject

@property (strong, nonatomic) NSArray *autores;
@property (copy, nonatomic) NSString *informePublicitario;
@property (copy, nonatomic) NSString *subTitulo;
@property (copy, nonatomic) NSString *texto;
@property (strong, nonatomic) NSArray *videos;
@property (copy, nonatomic) NSDate *atualizadoEm;
@property (copy, nonatomic) NSString *codigo;
@property (copy, nonatomic) NSDate *publicadoEm;
@property (strong, nonatomic) Secao *secao;
@property (copy, nonatomic) NSString *tipo;
@property (copy, nonatomic) NSString *titulo;
@property (copy, nonatomic) NSString *url;
@property (copy, nonatomic) NSString *urlOriginal;
@property (strong, nonatomic) NSArray *imagens;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
