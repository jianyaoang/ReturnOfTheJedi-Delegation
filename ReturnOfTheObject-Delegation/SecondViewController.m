//
//  SecondViewController.m
//  ReturnOfTheObject-Delegation
//
//  Created by Jian Yao Ang on 1/18/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *jediNameLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.jediNameLabel.text = self.jedi.name;
    
}

- (IBAction)onReturnOfTheJediButtonPressed:(id)sender
{
    self.jedi = [Jedi new];
    self.jedi.name = @"Yoda";
    
    [self.delegate passJediToViewController:self jediHasReturned:self.jedi];
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
