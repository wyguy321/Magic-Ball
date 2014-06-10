//
//  THMagicBall.m
//  Magic-ball
//
//  Created by wyatt on 4/20/14.
//  Copyright (c) 2014 wyatt. All rights reserved.
//

#import "THMagicBall.h"

@implementation THMagicBall

- (NSArray *) predictions {
    if (_predictions == nil){
        _predictions = [[NSArray alloc] initWithObjects:@"it is certain", @"You got it!", @"one..million..dollars..", @"You're fine. Just try harder next time",nil];
    }
    //Returns an array 
    return _predictions;
}


- (NSString*) randomPrediction {
    
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
    
    
    return nil;
}

@end
