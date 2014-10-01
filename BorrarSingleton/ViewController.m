//
//  ViewController.m
//  BorrarSingleton
//
//  Created by Henry AT on 10/1/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"
#import "ClaseDatos.h"
#import "ClaseDatos2.h"
#import "ClaseDatos3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPuts1:(id)sender {
    
    NSString * dato1 = @"Dato1";
    NSString * dato2 = @"Dato2";
    
    [[self traerDatos] addObject:dato1];
    [[self traerDatos] addObject:dato2];
}

- (IBAction)btnGets1:(id)sender {
    
    NSLog(@"%@ y %@",[[self traerDatos] objectAtIndex:0],[[self traerDatos] objectAtIndex:1]);
    
}




- (IBAction)btnPuts2:(id)sender{
    NSString * dato1 = @"Dato1";
    NSString * dato2 = @"Dato2";
    
    [[self traerDatosClaseDelegate] addObject:dato1];
    [[self traerDatosClaseDelegate] addObject:dato2];
}

- (IBAction)btnGets2:(id)sender{
    NSLog(@"%@ y %@",[[self traerDatosClaseDelegate] objectAtIndex:0],[[self traerDatosClaseDelegate] objectAtIndex:1]);
}


- (IBAction)btnPuts3:(id)sender{
    NSString * dato1 = @"Dato1";
    NSString * dato2 = @"Dato2";
    
    [[self traerDatosClaseDelegate2] addObject:dato1];
    [[self traerDatosClaseDelegate2] addObject:dato2];
    
}

- (IBAction)btnGets3:(id)sender{
    NSLog(@"%@ y %@",[[self traerDatosClaseDelegate2] objectAtIndex:0],[[self traerDatosClaseDelegate2] objectAtIndex:1]);
}

- (IBAction)btnPut4:(id)sender {
    
    NSString * dato1 = @"Dato thread safety1";
    NSString * dato2 = @"Dato thread safety2";
    
    [[self traerDatosClaseDelegate3] addObject:dato1];
    [[self traerDatosClaseDelegate3] addObject:dato2];
}

- (IBAction)btnGet4:(id)sender {
    
    NSString *cadena1 = [ClaseDatos3 sharedInstance].algunaProiedad;
    
    NSLog(@"%@ y %@, ademas:%@",[[self traerDatosClaseDelegate3] objectAtIndex:0],[[self traerDatosClaseDelegate3] objectAtIndex:1], cadena1);
}


#pragma mark Metodo que trae el NSMutableArray

-(NSMutableArray *)traerDatos{
    
    AppDelegate * delegado = (AppDelegate *)[UIApplication sharedApplication].delegate;
    return  (NSMutableArray *)delegado.datos;
    
}

#pragma mark Metod ClaseDatos
-(NSMutableArray *)traerDatosClaseDelegate{
    
    ClaseDatos * delegado1 = [ClaseDatos sharedInstance];
    return delegado1.datos;
}

#pragma mark Metod ClaseDatos
-(NSMutableArray *)traerDatosClaseDelegate2{
    
    ClaseDatos2 * delegado2 = [ClaseDatos2 sharedInstance];
    return delegado2.datos;
}

#pragma mark Metod ClaseDatos
-(NSMutableArray *)traerDatosClaseDelegate3{
    
    ClaseDatos3 * delegado3 = [ClaseDatos3 sharedInstance];
    return delegado3.datos;
}


@end
