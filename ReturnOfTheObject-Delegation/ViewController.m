//
//  ViewController.m
//  ReturnOfTheObject-Delegation
//
//  Created by Jian Yao Ang on 1/18/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

#import "ViewController.h"
#import "Jedi.h"
#import "SecondViewController.h"

@interface ViewController () <SecondViewControllerDelegate>
@property (strong, nonatomic) Jedi *jedi;
@property (weak, nonatomic) IBOutlet UILabel *jediLabelName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self trainThePadawan];
}

-(void)trainThePadawan
{
    self.jedi = [Jedi new];
    self.jedi.name = @"Kenobi";
    self.jediLabelName.text = self.jedi.name;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ToSecondVC"])
    {
        SecondViewController *svc = segue.destinationViewController;
        svc.jedi = self.jedi;
        svc.delegate = self;
    }
}

-(void)passJediToViewController:(UIViewController *)controller jediHasReturned:(Jedi *)jedi
{
    self.jedi = jedi;
    self.jediLabelName.text = self.jedi.name;
}

@end
