//
//  Imagem.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "Imagem.h"

@implementation Imagem

#pragma mark - Public

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.autor = [dictionary objectForKey:@"autor"];
        self.fonte = [dictionary objectForKey:@"fonte"];
        self.legenda = [dictionary objectForKey:@"legenda"];
        self.url = [dictionary objectForKey:@"url"];
    }
    
    return self;
}

@end
