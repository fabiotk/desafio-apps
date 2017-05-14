//
//  Imagem.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Imagem : NSObject

@property (copy, nonatomic) NSString *autor;
@property (copy, nonatomic) NSString *fonte;
@property (copy, nonatomic) NSString *legenda;
@property (copy, nonatomic) NSString *url;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
