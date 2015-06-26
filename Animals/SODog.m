//
//  SODog.m
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "SODog.h"

@implementation SODog

@synthesize maxHeight, maxSpeed, valueOfJump, valueOfSpeed, valueOfDeep, maxDeep, gastrocnemius;

-(void)makeMovement {
    [super makeMovement];
    NSLog(@"Dog move");
}

#pragma mark - Swimmers

-(void)swim {
    NSLog(@"%@ swim", self.nickName ? [self.nickName uppercaseString] : @"Dog");
}

-(void)dive {
    NSLog(@"%@ dive", self.nickName ? [self.nickName uppercaseString] : @"Dog");
}

#pragma mark - Jumpers

-(void)jump {
    NSLog(@"%@ jump", self.nickName ? [self.nickName uppercaseString] : @"Dog");
}

-(void)smile {
    NSLog(@"%@ smile", self.nickName ? [self.nickName uppercaseString] : @"Dog");
}

#pragma mark - Runners

-(void)run {
    NSLog(@"%@ run", self.nickName ? [self.nickName uppercaseString] : @"Dog");
}

-(void)overtakeAnOponent {
    NSLog(@"%@ shut on another dog", self.nickName ? [self.nickName capitalizedString] : @"Dog");
}

@end
