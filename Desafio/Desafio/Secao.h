//
//  Secao.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Secao : NSObject

@property (copy, nonatomic) NSString *nome;
@property (copy, nonatomic) NSString *url;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
