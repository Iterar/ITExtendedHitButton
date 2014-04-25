//
//  ITViewController.m
//  ITExtendedHitButtonExample
//
//  Created by Andre Sousa on 14/04/14.
//  Copyright (c) 2014 Iterar. All rights reserved.
//

#import "ITViewController.h"
#import "ITExtendedHitButton.h"

@interface ITViewController ()

@property (nonatomic, strong) IBOutlet ITExtendedHitButton *extendedStoryBoardButton;
@property (nonatomic, strong) ITExtendedHitButton *extendedButton;

@end

@implementation ITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Created in storyboard
    self.extendedStoryBoardButton.hitEdge = 50.0f;
    
    // Created programmatically
    self.extendedButton = [ITExtendedHitButton buttonWithType:UIButtonTypeSystem];
    [self.extendedButton setFrame:CGRectMake(100, 450, 140, 20)];
    [self.extendedButton setTitle:@"Extended button" forState:UIControlStateNormal];
    self.extendedButton.hitEdge = 70.0f;
    [self.view addSubview:self.extendedButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
