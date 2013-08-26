//
//  ViewController.m
//  JailGuard
//
//  Created by smartphones on 8/23/13.
//  Copyright (c) 2013 Smartphones Telecom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.¨
    
    BOOL isJailbroken = NO;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:@"/bin/bash"] ||
        [[NSFileManager defaultManager] fileExistsAtPath:@"/Applications/Cydia.app"] ||
        [[NSFileManager defaultManager] fileExistsAtPath:@"/private/var/lib/apt"]) {
        // Device is jailbroken
        isJailbroken = YES;
    }
    
    UILabel *jailbrokenInfo = [[UILabel alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height-40)/2, self.view.frame.size.width, 40)];
    [jailbrokenInfo setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:jailbrokenInfo];
    
    if (isJailbroken) {
        [jailbrokenInfo setText:@"This device is jailbroken!"];
    }
    else {
        [jailbrokenInfo setText:@"This device is not jailbroken."];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
