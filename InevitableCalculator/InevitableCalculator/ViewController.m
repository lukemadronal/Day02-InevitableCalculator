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
BOOL stream=true;
int plus=0;
int equals=0;

- (IBAction)oneButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"1";
        current=1;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"1")];
        current=[_display.text intValue];
    }
}

- (IBAction)twoButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"2";
        current=2;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"2")];
        current=[_display.text intValue];
    }
}

- (IBAction) threeButtonPressed: (id)sender {
    if(checkClear) {
        _display.text=@"3";
        current=3;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"3")];
        current=[_display.text intValue];
    }
}

- (IBAction)fourButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"4";
        current=4;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"4")];
        current=[_display.text intValue];
    }
}

- (IBAction)fiveButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"5";
        current=5;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"5")];
        current=[_display.text intValue];
    }
}

- (IBAction)sixButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"6";
        current=6;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"6")];
        current=[_display.text intValue];
    }
}

- (IBAction)sevenButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"7";;
        current=7;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"7")];
        current=[_display.text intValue];
    }
}

- (IBAction)eightButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"8";
        current=8;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"8")];
        current=[_display.text intValue];
    }
}

- (IBAction)nineButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"9";
        current=9;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"9")];
        current=[_display.text intValue];
    }
}

- (IBAction)zeroButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"0";
        current=0;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"0")];
        current=[_display.text intValue];
    }
}


- (IBAction)plusButtonPressed:(id)sender {
    
    if (stream && plus>=1) {
        current=[_display.text intValue];
        _display.text = [NSString stringWithFormat: @"%i",current+prev];
        current=[_display.text intValue];
        prev=current;
        checkClear=true;
        plus++;
        NSLog(@"i shouldnt be here");
    } else {
        checkClear=false;
        _display.text=@" ";
        prev=current;
        stream=true;
        plus++;
         NSLog(@"%i (and) %i",current, prev);
    }
}

- (IBAction)equalsButtonPressed:(id)sender {
    stream=false;
    NSLog(@"%i and %i",current, prev);
    _display.text = [NSString stringWithFormat: @"%i",current+prev];
    current=[_display.text intValue];
    checkClear=true;
    prev=0;
    equals++;
}

- (IBAction)clearButtonPressed:(id)sender {
    _display.text=@" ";
     current=0;
    prev=0;
    stream=true;
    plus=0;
    equals=0;
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
