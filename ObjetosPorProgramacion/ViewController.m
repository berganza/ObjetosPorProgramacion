//
//  ViewController.m
//  ObjetosPorProgramacion
//
//  Created by LLBER on 21/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize caja, label, imagen, slider;

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // TextField
    caja = [[UITextField alloc] initWithFrame:CGRectMake(40, 50, 200, 25)];
    caja.backgroundColor = [UIColor whiteColor];
    caja.borderStyle = UITextBorderStyleRoundedRect;
    caja.textColor = [UIColor redColor];
    caja.clearButtonMode = UITextFieldViewModeWhileEditing;
    caja.placeholder = @"Esto es un textField";
    caja.font = [UIFont systemFontOfSize:17.0];
    caja.autocorrectionType = UITextAutocorrectionTypeNo;
    caja.keyboardType = UIKeyboardTypeDefault;
    
    
    [self.view addSubview:caja];
    caja.delegate = self;
    
    
    
    // Boton
    UIButton *boton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    boton.frame = CGRectMake(40, 100, 100, 40);
    [boton setTitle:@"Esto es un boton" forState:UIControlStateNormal];
    [boton addTarget:self action:@selector(presionarBoton:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:boton];
    
    
    
    // Label
    label = [[UILabel alloc] initWithFrame:CGRectMake(40, 150, 200, 60)];
    label.text = @"Esto es un Label";
    
    [self.view addSubview:label];
    
    
    // Imagen
    CGRect unaImagen = CGRectMake(120.0f, 230.0f, 80.0f, 80.0f);
    imagen = [[UIImageView alloc] initWithFrame:unaImagen];
    [imagen setImage:[UIImage imageNamed:@"10.png"]];
    imagen.opaque = YES;
    imagen.alpha = 0;
    
    [self.view addSubview:imagen];
    
    
    // Slider
    CGRect frame = CGRectMake(18.0, 348.0, 284.0, 23.0);
    slider = [[UISlider alloc] initWithFrame:frame];
    [slider addTarget:self action:@selector(moverSlider:) forControlEvents:UIControlEventValueChanged];
    slider.value = 0.0;
    
    [self.view addSubview:slider];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction) presionarBoton:(id) sender{
    [caja resignFirstResponder];
	label.text = caja.text;
}

-(IBAction) moverSlider:(id) sender{
    imagen.alpha = slider.value;
}


@end
