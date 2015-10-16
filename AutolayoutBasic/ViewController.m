//
//  ViewController.m
//  AutolayoutBasic
//
//  Created by Cuong Trinh on 9/12/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView1;
@property (weak, nonatomic) IBOutlet UIView *myView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self printSize:@"viewDidLoad"];
}

- (void)viewWillAppear:(BOOL)animated {
    [self printSize:@"viewWillAppear"];

}
- (void) viewDidAppear:(BOOL)animated {
    [self printSize: @"viewDidAppear"];
}
- (void) viewWillLayoutSubviews {
    [self printSize: @"viewWillLayoutSubviews"];
}
- (void) viewDidLayoutSubviews {
    [self printSize: @"viewDidLayoutSubviews"];
}

- (void) printSize: (NSString*) funcName {
    CGSize size1 = self.myView1.bounds.size;
    CGSize size2 = self.myView2.bounds.size;
    NSLog(@"%@: %3.0f - %3.0f", funcName, size1.width, size2.height);
    NSLog(@"%@: %3.0f - %3.0f", funcName, size2.width, size2.height);
}

@end
