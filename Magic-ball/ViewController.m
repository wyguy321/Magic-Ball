//
//  ViewController.m
//  Magic-ball
//
//  Created by wyatt on 4/20/14.
//  Copyright (c) 2014 wyatt. All rights reserved.
//

#import "ViewController.h"
#import "THMagicBall.h"
#import <AudioToolbox/AudioToolbox.h>
@interface ViewController ()

@end

@implementation ViewController{
    SystemSoundID soundEffect;
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"crystal_ball" ofType:@"mp3"];
    
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    
    //Casts an C function to an o-bjective c function 
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
    self.crystalBall = [[THMagicBall alloc]init];
    self.backgroundImageview.animationImages = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"CB00001"],
                                                                                [UIImage imageNamed:@"CB00004"],
                                                                                [UIImage imageNamed:@"CB00005"],
                                                                                [UIImage imageNamed:@"CB00006"],
                                                                                [UIImage imageNamed:@"CB00007"],
                                                                                [UIImage imageNamed:@"CB00008"],
                                                                                [UIImage imageNamed:@"CB00009"],
                                                                                [UIImage imageNamed:@"CB00010"],
                                                                                [UIImage imageNamed:@"CB00011"],
                                                                                [UIImage imageNamed:@"CB00012"],
                                                                                [UIImage imageNamed:@"CB00013"],
                                                                                [UIImage imageNamed:@"CB00014"],
                                                                                [UIImage imageNamed:@"CB00015"],
                                                                                [UIImage imageNamed:@"CB00016"],
                                                                                [UIImage imageNamed:@"CB00017"],
                                                                                [UIImage imageNamed:@"CB00018"],
                                                                                [UIImage imageNamed:@"CB00019"],
                                                                                [UIImage imageNamed:@"CB00020"],
                                                                                [UIImage imageNamed:@"CB00021"],
                                                                                [UIImage imageNamed:@"CB00022"],
                                                                                [UIImage imageNamed:@"CB00023"],
                                                                                [UIImage imageNamed:@"CB00024"],
                                                                                [UIImage imageNamed:@"CB00025"],
                                                                                [UIImage imageNamed:@"CB00026"],
                                                                                [UIImage imageNamed:@"CB00027"],
                                                                                [UIImage imageNamed:@"CB00028"],
                                                                                [UIImage imageNamed:@"CB00029"],
                                                                                [UIImage imageNamed:@"CB00030"],
                                                                                [UIImage imageNamed:@"CB00031"],
                                                                                [UIImage imageNamed:@"CB00032"],
                                                                                [UIImage imageNamed:@"CB00033"],
                                                                                [UIImage imageNamed:@"CB00034"],
                                                                                [UIImage imageNamed:@"CB00035"],
                                                                                [UIImage imageNamed:@"CB00036"],
                                                                                [UIImage imageNamed:@"CB00037"],
                                                                                [UIImage imageNamed:@"CB00038"],
                                                                                [UIImage imageNamed:@"CB00039"],
                                                                                [UIImage imageNamed:@"CB00040"],
                                                                                [UIImage imageNamed:@"CB00041"],
                                                                                [UIImage imageNamed:@"CB00042"],
                                                                                [UIImage imageNamed:@"CB00043"],
                                                                                [UIImage imageNamed:@"CB00044"],
                                                                                [UIImage imageNamed:@"CB00045"],
                                                                                [UIImage imageNamed:@"CB00046"],
                                                                                [UIImage imageNamed:@"CB00047"],
                                                                                [UIImage imageNamed:@"CB00048"],
                                                                                [UIImage imageNamed:@"CB00049"],
                                                                                [UIImage imageNamed:@"CB00050"],
                                                                                [UIImage imageNamed:@"CB00051"],
                                                                                [UIImage imageNamed:@"CB00052"],
                                                                                [UIImage imageNamed:@"CB00053"],
                                                                                [UIImage imageNamed:@"CB00054"],
                                                                                [UIImage imageNamed:@"CB00055"],
                                                                                [UIImage imageNamed:@"CB00056"],
                                                                                [UIImage imageNamed:@"CB00057"],
                                                                                [UIImage imageNamed:@"CB00058"],
                                                                                [UIImage imageNamed:@"CB00059"],
                                                [UIImage imageNamed:@"CBOOO60"], nil];
    
    self.backgroundImageview.animationDuration = 2.5f;
    self.backgroundImageview.animationRepeatCount = 1;


    
	
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - Prediction 

- (void) makePrediction {
    [self.backgroundImageview startAnimating];
       self.predictionLabel.text = [self.crystalBall randomPrediction];
    AudioServicesPlaySystemSound(soundEffect);
    [UIView animateWithDuration:6.0 animations:^{
     
        self.predictionLabel.alpha = 1.0f;
                                                 }];
    
    
}




# pragma Motion event
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.alpha = 0.0f;
  
    self.predictionLabel.text = nil;
    
}



- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake ) {
        [self makePrediction];
    }
    
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancled");
}

#pragma - touch events
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}



- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancled");
}
@end
