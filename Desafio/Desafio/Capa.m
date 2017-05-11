//
//  Capa.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "Capa.h"

@implementation Capa

#pragma mark - Public

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.capa = [dictionary objectForKey:@"capa"];
        self.conteudos = [dictionary objectForKey:@"conteudos"];
    }
    
    return self;
}

@end
