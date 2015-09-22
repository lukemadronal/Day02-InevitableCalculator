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

double current=0;
double prev=0;
BOOL checkClear;
BOOL stream=true;
int plus=0;
int equals=0;
int code;
double multE;
double multY;
double global;

- (IBAction)oneButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"1";
        current=1;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"1")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)twoButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"2";
        current=2;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"2")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction) threeButtonPressed: (id)sender {
    if(checkClear) {
        _display.text=@"3";
        current=3;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"3")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)fourButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"4";
        current=4;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"4")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)fiveButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"5";
        current=5;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"5")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)sixButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"6";
        current=6;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"6")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)sevenButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"7";;
        current=7;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"7")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)eightButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"8";
        current=8;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"8")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)nineButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"9";
        current=9;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"9")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)zeroButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@"0";
        current=0;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@"0")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}

- (IBAction)decimalButtonPressed:(id)sender {
    if(checkClear) {
        _display.text=@".";
        current=0;
        checkClear=false;
    } else {
        _display.text = [_display.text stringByAppendingString:(@".")];
        current=[_display.text doubleValue];
    }
    multY=[_display.text doubleValue];
}



- (IBAction)plusButtonPressed:(id)sender {
    if ([_display.text doubleValue]!=global) {
    code=0;
    if (stream && plus>=1) {
        current=[_display.text doubleValue];
        _display.text = [NSString stringWithFormat: @"%f",current+prev];
        current=[_display.text doubleValue];
        prev=current;
        checkClear=true;
        plus++;
    } else {
        checkClear=false;
        _display.text=@" ";
        prev=current;
        stream=true;
        plus++;
        NSLog(@"%f (and) %f",current, prev);
    }
    global=[_display.text doubleValue];
    }
}

- (IBAction)multiplyButtonPressed:(id)sender {
    code=1;
    if (stream && plus>=1) {
        current=[_display.text doubleValue];
        _display.text = [NSString stringWithFormat: @"%f",prev*current];
        current=[_display.text doubleValue];
        prev=current;
        checkClear=true;
        plus++;
    } else {
        checkClear=false;
        _display.text=@" ";
        prev=current;
        stream=true;
        plus++;
        NSLog(@"%f (and) %f",current, prev);
    }
}

- (IBAction)minusButtonPressed:(id)sender {
    code=2;
    if (stream && plus>=1) {
        current=[_display.text doubleValue];
        _display.text = [NSString stringWithFormat: @"%f",prev-current];
        current=[_display.text doubleValue];
        prev=current;
        checkClear=true;
        plus++;
    } else {
        checkClear=false;
        _display.text=@" ";
        prev=current;
        stream=true;
        plus++;
        NSLog(@"%f (and) %f",current, prev);
    }
}

- (IBAction)divisionButtonPressed:(id)sender {
    code=3;
    if (stream && plus>=1) {
        current=[_display.text doubleValue];
        _display.text = [NSString stringWithFormat: @"%f",prev/current];
        current=[_display.text doubleValue];
        prev=current;
        checkClear=true;
        plus++;
    } else {
        checkClear=false;
        _display.text=@" ";
        prev=current;
        stream=true;
        plus++;
        NSLog(@"%f (and) %f",current, prev);
    }
}

- (IBAction)equalsButtonPressed:(id)sender {
    if (multE==[_display.text doubleValue]) {
         NSLog(@"%f and %f",current, multY);
        prev=multY;
        if (code==0) {
            _display.text = [NSString stringWithFormat: @"%f",current+prev];
        } else {
            if (code==1) {
                _display.text = [NSString stringWithFormat: @"%f",prev*current];
            } else {
                if (code==2) {
                    _display.text = [NSString stringWithFormat: @"%f",prev-current];
                } else {
                    _display.text = [NSString stringWithFormat: @"%f",prev/current];
                }
            }
        }
        current=[_display.text doubleValue];
    } else {
        stream=false;
        NSLog(@"%f and %f",current, prev);
        if (code==0) {
            _display.text = [NSString stringWithFormat: @"%f",current+prev];
        } else {
            if (code==1) {
                _display.text = [NSString stringWithFormat: @"%f",prev*current];
            } else {
                if (code==2) {
                    _display.text = [NSString stringWithFormat: @"%f",prev-current];
                } else {
                    _display.text = [NSString stringWithFormat: @"%f",prev/current];
                }
            }
        }
        current=[_display.text doubleValue];
        checkClear=true;
        multE=current;
        prev=0;
        equals++;
    }
}

- (IBAction)clearButtonPressed:(id)sender {
    _display.text=@" ";
    current=0;
    prev=0;
    stream=true;
    plus=0;
    equals=0;
    multE=0;
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
