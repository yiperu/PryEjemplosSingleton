//
//  ClaseDatos2.m
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ClaseDatos2.h"

@implementation ClaseDatos2

@synthesize datos;
@synthesize algunaProiedad;

//static ClaseDatos2 * instancia;


-(id) init {
    if (self = [super init]) {
        // Codigo de Inicializacion aqui
        self.datos = [[NSMutableArray alloc] init];
        self.algunaProiedad = @"Default Property Value";
    }
    return self;
    
}


+(ClaseDatos2 *) sharedInstance{
    
    // instancia persistente
    static ClaseDatos2 *sharedMyManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
        // Otras inicializaciones privadas aqui:
    });
    
    return sharedMyManager;    
}



@end
