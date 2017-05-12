//
//  Capa.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "Capa.h"
#import "Conteudo.h"

@implementation Capa

#pragma mark - Private

- (void)initConteudo:(NSDictionary *)dictionary {
    NSMutableArray *conteudos = [NSMutableArray array];
    
    for (NSDictionary *conteudo in dictionary) {
        [conteudos addObject:[[Conteudo alloc] initWithDictionary:conteudo]];
    }
    
    self.conteudos = conteudos;
}

#pragma mark - Public

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.capa = [dictionary objectForKey:@"produto"];
        [self initConteudo:[dictionary objectForKey:@"conteudos"]];
    }
    
    return self;
}

@end
