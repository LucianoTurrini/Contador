//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
#import "Contador.h"

@protocol ADelegate <NSObject>

@required
- (void)didPrint;

@optional
- (void)willPrint;

@end

@interface SecondViewController () {
      Contador *contador;
      id <ADelegate>delegate;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador ContadorCompartilhado];
    //Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal]];
}


@end
