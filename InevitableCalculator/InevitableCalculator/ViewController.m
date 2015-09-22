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
int c=10;

- (IBAction)oneButtonPressed:(id)sender {
    _display.text = [_display.text stringByAppendingString:(@"1")];
    current=[_display.text intValue];
    //NSLog(@"%d",current);
}

- (IBAction)plusButtonPressed:(id)sender {
    _display.text=@" ";
    int temp=current+prev;
    NSLog(@"%d",temp);
    //_display.text= (@"%d",temp);
    prev=current;
    
}

- (IBAction)equalsButtonPressed:(id)sender {
    
    int temp=current+prev;
    NSLog(@"%d",temp);
    _display.text = [NSString stringWithFormat: @"%d",temp];
    //NSLog(@"equals");
}

- (IBAction)clearButtonPressed:(id)sender {
    current=0;
    prev=0;
    _display.text=@" ";
    NSLog(@"clear");
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
