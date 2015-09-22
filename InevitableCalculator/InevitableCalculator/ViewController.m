//
//  ViewController.m
//  InevitableCalculator
//
//  Created by Luke Madronal on 9/22/15.
//  Copyright © 2015 Luke Madronal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UILabel *display;

@end

@implementation ViewController

int current=0;
int prev=0;
BOOL checkClear;

- (IBAction)oneButtonPressed:(id)sender {
    if(checkClear) {
        NSLog(@"got here");
        _display.text=@"1";
        checkClear=false;
    } else {
    _display.text = [_display.text stringByAppendingString:(@"1")];
    current=[_display.text intValue];
    }
}

- (IBAction)plusButtonPressed:(id)sender {
    checkClear=false;
    _display.text=@" ";
    NSLog(@"%i",current+prev);
    prev=current;
}

- (IBAction)equalsButtonPressed:(id)sender {
    NSLog(@"%i",current+prev);
    _display.text = [NSString stringWithFormat: @"%i",current+prev];
    checkClear=true;
}

- (IBAction)clearButtonPressed:(id)sender {
    
    current=0;
    prev=0;
    _display.text=@" ";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
