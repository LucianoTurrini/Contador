//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//
@protocol Atualizador <NSObject>

@required
- (void)atualiza;

@end

@interface Contador : NSObject 

@property (nonatomic, assign)id delegate;

- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;
+ (id)ContadorCompartilhado;

@end

