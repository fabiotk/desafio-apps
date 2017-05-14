//
//  APINoticias.h
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Capa;

typedef void(^RequestSuccess) (__strong Capa *capa);
typedef void(^RequestError)();

@interface APINoticias : NSObject

- (void)fetchCapa:(RequestSuccess)successBlock
       errorBlock:(RequestError)errorBlock;

@end
