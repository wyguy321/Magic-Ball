//
//  ViewController.h
//  Magic-ball
//
//  Created by wyatt on 4/20/14.
//  Copyright (c) 2014 wyatt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class THMagicBall;



@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) THMagicBall *crystalBall;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageview;

- (void) makePrediction;

@end
