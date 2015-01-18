//
//  SecondViewController.h
//  ReturnOfTheObject-Delegation
//
//  Created by Jian Yao Ang on 1/18/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jedi.h"

@protocol SecondViewControllerDelegate <NSObject>
-(void)passJediToViewController:(UIViewController*)controller jediHasReturned:(Jedi*)jedi;

@end

@interface SecondViewController : UIViewController
@property (strong, nonatomic) Jedi *jedi;
@property (weak, nonatomic) id <SecondViewControllerDelegate> delegate;
@end
