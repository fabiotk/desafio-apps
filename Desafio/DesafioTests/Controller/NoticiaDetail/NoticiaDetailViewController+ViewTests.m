//
//  NoticiaDetailViewController+ViewTests.m
//  Desafio
//
//  Created by Fabio Almeida on 5/14/17.
//  Copyright © 2017 Fabio Almeida. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NoticiaDetailViewController+View.h"
#import "Secao.h"
#import "NSDate+Support.h"

@interface NoticiaDetailViewController ()

- (void)addDataToView;

@end

@interface NoticiaDetailViewController_ViewTests : XCTestCase

@property (strong, nonatomic) NoticiaDetailViewController *viewController;

@end

@implementation NoticiaDetailViewController_ViewTests


- (void)setUp {
    [super setUp];
    self.viewController = [NoticiaDetailViewController controllerInstanceFromStoryboard];
    
    Conteudo *model = [[Conteudo alloc] init];
    model.titulo = @"Titulo";
    model.subTitulo = @"SubTitulo";
    model.publicadoEm = [NSDate dateFromString:@"2012-10-12"];
    model.texto = @"Lorem Ipsum";
    
    Secao *secao = [[Secao alloc] init];
    secao.nome = @"InfoGlobo";
    model.secao = secao;
    
    [self.viewController setup:model];
    [self.viewController view];
}

- (void)shouldTestAddDataToView {
    //
    [self.viewController addDataToView];
    
    //
    XCTAssertEqualObjects(self.viewController.title, @"InfoGlobo");
    XCTAssertEqualObjects(self.viewController.tituloLabel.text, @"Titulo");
    XCTAssertEqualObjects(self.viewController.subTituloLabel.text, @"SubTitulo");
    XCTAssertEqualObjects(self.viewController.dataLabel.text, @"10/12/2012");
    XCTAssertEqualObjects(self.viewController.textoLabel.text, @"Lorem Ipsum");
}

@end
