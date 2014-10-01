//
//  ClaseDatos3.m
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ClaseDatos3.h"

@implementation ClaseDatos3

@synthesize datos;
@synthesize algunaProiedad;

static ClaseDatos3* shared_instance;

-(id) init {
    if (self = [super init]) {
        // Codigo de Inicializacion aqui
        self.datos = [[NSMutableArray alloc] init];
        self.algunaProiedad = @"Default Property Value";
    }
    return self;
    
}


+(ClaseDatos3 *) sharedInstance{
    
    @synchronized( shared_instance ) {
        if( !shared_instance ) {
            shared_instance = [[ClaseDatos3 alloc] init];
            //some additional initialization here
            
        }
    }
    
    return shared_instance;
}


@end
