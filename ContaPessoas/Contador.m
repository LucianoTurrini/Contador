//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}
//Singleton
+ (id)ContadorCompartilhado {
    static Contador *ContadorCompartilhado = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ContadorCompartilhado = [[self alloc] init];
    });
    return ContadorCompartilhado;
}

- (void)maisUmCueca {
    boy = boy + 1;
}
- (void)maisUmaGata {
    girl++;
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return [self getBoys] + [self getGirls];
}


@end

