//
//  ImagemTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Imagem.h"

@interface ImagemTests : XCTestCase

@property (strong, nonatomic) Imagem *imagem;

@end

@implementation ImagemTests

- (void)setUp {
    [super setUp];
    NSDictionary *dictionary = @{ @"autor": @"Guito Moreto",
                                 @"fonte": @"Agência O Globo / 17-11-2016",
                                 @"legenda": @"O ex-governador do Rio Sérgio Cabral ao ser preso pela Polícia Federal em novembro",
                                 @"url": @"https://ogimg.infoglobo.com.br/in/20620804-669-05e/FT1086A/cabral-preso.jpg"};
    
    self.imagem = [[Imagem alloc] initWithDictionary:dictionary];
}

- (void)testShouldVerifyProperties {
    XCTAssertEqual(self.imagem.autor, @"Guito Moreto");
    XCTAssertEqual(self.imagem.fonte, @"Agência O Globo / 17-11-2016");
    XCTAssertEqual(self.imagem.legenda, @"O ex-governador do Rio Sérgio Cabral ao ser preso pela Polícia Federal em novembro");
    XCTAssertEqual(self.imagem.url, @"https://ogimg.infoglobo.com.br/in/20620804-669-05e/FT1086A/cabral-preso.jpg");
}

@end
