//
//  Conteudo.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "Conteudo.h"
#import "Secao.h"
#import "Imagem.h"

@implementation Conteudo

#pragma mark - Private

- (void)initAutores:(NSDictionary *)dictionary {
    if ([dictionary objectForKey:@"autores"]) {
        if (dictionary.allValues.count > 0) {
            self.autores =  dictionary.allValues;
        }
    }
}

- (void)initSecao:(NSDictionary *)dictionary {
    NSMutableArray *secoes = [NSMutableArray array];
    if ([dictionary objectForKey:@"secao"]) {
        for (NSDictionary *obj in [dictionary objectForKey:@"secao"]) {
            [secoes addObject:[[Secao alloc] initWithDictionary:obj]];
        }
    }
    self.secao = secoes;
}

- (void)initVideos:(NSDictionary *)dictionary {
    if ([dictionary objectForKey:@"videos"]) {
        if ([dictionary objectForKey:@"videos"]) {
            if (dictionary.allValues.count > 0) {
                self.videos =  dictionary.allValues;
            }
        }
    }
}

- (void)initImagens:(NSDictionary *)dictionary {
    NSMutableArray *imagens = [NSMutableArray array];
    if ([dictionary objectForKey:@"imagens"]) {
        for (NSDictionary *obj in [dictionary objectForKey:@"imagens"]) {
            [imagens addObject:[[Imagem alloc] initWithDictionary:obj]];
        }
    }
    self.imagens = imagens;
}

#pragma mark - Public

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.informePublicitario = [dictionary objectForKey:@"informePublicitario"];
        self.subTitulo = [dictionary objectForKey:@"subTitulo"];
        self.texto = [dictionary objectForKey:@"texto"];
        self.atualizadoEm = [dictionary objectForKey:@"atualizadoEm"];
        self.tipo = [dictionary objectForKey:@"tipo"];
        self.titulo =  [dictionary objectForKey:@"titulo"];
        self.url = [dictionary objectForKey:@"url"];
        self.urlOriginal = [dictionary objectForKey:@"urlOriginal"];
        
        [self initAutores:dictionary];
        [self initSecao:dictionary];
        [self initVideos:dictionary];
        [self initImagens:dictionary];
    }
    
    return self;
}

@end
