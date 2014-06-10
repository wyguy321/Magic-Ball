//
//  THMagicBall.h
//  Magic-ball
//
//  Created by wyatt on 4/20/14.
//  Copyright (c) 2014 wyatt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THMagicBall : NSObject{
    NSArray *_predictions;
}

@property (strong, nonatomic, readonly) NSArray *predictions;

- (NSString *) randomPrediction;

@end
