//
//  Secao.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "Secao.h"

@implementation Secao

#pragma mark - Public

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.nome = [dictionary objectForKey:@"nome"];
        self.url = [dictionary objectForKey:@"url"];
    }
    
    return self;
}

@end
