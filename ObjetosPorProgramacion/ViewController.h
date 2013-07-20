//
//  ViewController.h
//  ObjetosPorProgramacion
//
//  Created by LLBER on 21/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, strong) UITextField * caja;

@property(nonatomic,strong) UILabel *label;

@property(nonatomic,strong) UIImageView *imagen;

@property(nonatomic,strong) UISlider *slider;



@end
