//
//  ConteudoTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/12/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Conteudo.h"

@interface ConteudoTests : XCTestCase

@property (strong, nonatomic) Conteudo *model;

@end

@implementation ConteudoTests

- (void)setUp {
    [super setUp];
    
    NSDictionary *dictionary =
  @{ @"informePublicitario" : @"false",
     @"subTitulo" : @"MPF denuncia doleiro Juca Bala, acusado de movimentar US$ 3 milhões para o ex-governador",
     @"texto" : @"RIO — O ex-governador do Rio Sérgio Cabral foi denunciado nesta quarta-feira pela sexta vez na Operação Lava-Jato.",
     @"atualizadoEm" : @"2017-03-08T13:25:03-0300",
     @"id" : @"21030945",
     @"publicadoEm" : @"2017-03-08T12:52:43-0300",
     @"tipo" : @"materia",
     @"titulo" : @"Sérgio Cabral é denunciado pela sexta vez na Lava-Jato",
     @"url" : @"http://m.oglobo.globo.com/brasil/sergio-cabral-denunciado-pela-sexta-vez-na-lava-jato-21030945?app=1",
     @"urlOriginal" : @"http://oglobo.globo.com/brasil/sergio-cabral-denunciado-pela-sexta-vez-na-lava-jato-21030945",
      @"autores" : @[@"O GLOBO"],
     @"videos" : @[@"www.youtube.com"]
     };
    

    
    self.model = [[Conteudo alloc] initWithDictionary:dictionary];
    
}

- (void)shoulVerifyIfPropertiesAreNotNil {
    XCTAssertNotNil(self.model.informePublicitario);
    XCTAssertNotNil(self.model.subTitulo);
    XCTAssertNotNil(self.model.texto);
    XCTAssertNotNil(self.model.atualizadoEm);
    XCTAssertNotNil(self.model.codigo);
    XCTAssertNotNil(self.model.tipo);
    XCTAssertNotNil(self.model.titulo);
    XCTAssertNotNil(self.model.url);
    XCTAssertNotNil(self.model.urlOriginal);
    XCTAssertNotNil(self.model.autores);
    XCTAssertNotNil(self.model.videos);
}

@end
