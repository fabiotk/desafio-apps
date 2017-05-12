//
//  Capa.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Conteudo;

@interface Capa : NSObject

@property (copy, nonatomic) NSString *capa;
@property (strong, nonatomic) NSArray *conteudos;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
