//
//  ClaseDatos.m
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ClaseDatos.h"

@implementation ClaseDatos
@synthesize datos;
@synthesize algunaProiedad;

// instancia persistente
static ClaseDatos * instancia;


-(id) init {
    if (self = [super init]) {
        // Codigo de Inicializacion aqui
        self.datos = [[NSMutableArray alloc] init];
    }
    return self;
}


+(ClaseDatos *) sharedInstance{

    if (instancia == nil) {
        instancia = [[ClaseDatos alloc] init];
    }
    return instancia;
}

@end
