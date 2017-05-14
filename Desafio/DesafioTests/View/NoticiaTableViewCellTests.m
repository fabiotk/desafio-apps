//
//  NoticiaTableViewCellTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NoticiaTableViewCell.h"
#import "Conteudo.h"
#import "Secao.h"
#import "NSDate+Support.h"

@interface NoticiaTableViewCellTests : XCTestCase

@property (strong, nonatomic) NoticiaTableViewCell *cell;

@end

@implementation NoticiaTableViewCellTests

- (void)setUp {
    [super setUp];
    self.cell = (NoticiaTableViewCell *) [[[NSBundle bundleForClass:[NoticiaTableViewCell class]]
                                           loadNibNamed:@"CapaTableViewCell"
                                           owner:nil
                                           options:nil] objectAtIndex:0];
}

- (void)testShouldVerifySetup {
    //
    Conteudo *model = [[Conteudo alloc] init];
    model.titulo = @"Titulo";
    model.subTitulo = @"SubTitutlo";
    model.publicadoEm = [NSDate date];
    model.texto = @"Lorem Ipsum";
    
    Secao *secao = [[Secao alloc] init];
    secao.nome = @"secao";
    model.secao = secao;
    
    //
    [self.cell setup:model];
    
    //
    XCTAssertEqualObjects(self.cell.secaoLabel.text, model.secao.nome);
    XCTAssertEqualObjects(self.cell.legendaLabel.text, model.titulo);
    
}


@end
