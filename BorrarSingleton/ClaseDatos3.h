//
//  ClaseDatos3.h
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClaseDatos3 : NSObject


@property (nonatomic, strong) NSMutableArray * datos;
@property (nonatomic, strong) NSString * algunaProiedad;

+(ClaseDatos3 *) sharedInstance;



@end
