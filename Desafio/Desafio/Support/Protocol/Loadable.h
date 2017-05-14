//
//  Loadable.h
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Loadable <NSObject>

+ (instancetype)controllerInstanceFromStoryboard;

@end
