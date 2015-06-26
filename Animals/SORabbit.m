//
//  SORabbit.m
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "SORabbit.h"

@implementation SORabbit

@synthesize maxHeight, valueOfJump;

-(void)makeMovement {
    [super makeMovement];
    NSLog(@"Rabbit move");
}

-(void)jump {
    NSLog(@"%@ jump", self.nickName ? [self.nickName uppercaseString] : @"Rabbit");
}

@end
