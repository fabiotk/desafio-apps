//
//  APINoticias.m
//  Desafio
//
//  Created by Fabio Almeida on 5/11/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import "APINoticias.h"

#import <AFNetworking/AFNetworking.h>

#import "Capa.h"

@interface APINoticias ()

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end

@implementation APINoticias

#pragma mark - Getter

- (AFHTTPSessionManager *)manager {
    if (!_manager) {
        _manager = [[AFHTTPSessionManager manager] init];
        _manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    
    return _manager;
}


#pragma mark - Public

- (void)fetchCapa:(RequestSuccess)successBlock
       errorBlock:(RequestError)errorBlock {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    [self.manager GET:@"https://raw.githubusercontent.com/Infoglobo/desafio-apps/master/capa.json"
           parameters:nil
             progress:nil
              success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
                  
                  NSArray *json = [NSJSONSerialization JSONObjectWithData:responseObject
                                                                  options:NSJSONReadingMutableContainers
                                                                    error:nil];
                  
                  Capa *capa =
                  [[Capa alloc] initWithDictionary:json.firstObject];
                  
                  if (successBlock) {
                      return successBlock(capa);
                  }
                  
              } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
                  if (errorBlock) errorBlock();
              }];
}

@end
