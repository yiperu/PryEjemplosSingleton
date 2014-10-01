//
//  ViewController.h
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)btnPuts1:(id)sender;

- (IBAction)btnGets1:(id)sender;

- (IBAction)btnPuts2:(id)sender;

- (IBAction)btnGets2:(id)sender;


- (IBAction)btnPuts3:(id)sender;

- (IBAction)btnGets3:(id)sender;


- (IBAction)btnPut4:(id)sender;


- (IBAction)btnGet4:(id)sender;


-(NSMutableArray *)traerDatos;

-(NSMutableArray *)traerDatosClaseDelegate;

-(NSMutableArray *)traerDatosClaseDelegate2;

-(NSMutableArray *)traerDatosClaseDelegate3;

@end

