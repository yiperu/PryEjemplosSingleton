//
//  ClaseDatos2.h
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

//El GCD para asegurarnos siempre de estar en el main thread

#import <Foundation/Foundation.h>

@interface ClaseDatos2 : NSObject

@property (nonatomic, strong) NSMutableArray * datos;
@property (nonatomic, strong) NSString * algunaProiedad;

+(ClaseDatos2 *) sharedInstance;


@end
