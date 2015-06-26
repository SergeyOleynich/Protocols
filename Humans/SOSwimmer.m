//
//  SOSwimmer.m
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "SOSwimmer.h"

@implementation SOSwimmer

@synthesize valueOfDeep, maxDeep;

-(instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

-(void)makeMovement {
    [super makeMovement];
    NSLog(@"Swimmer move");
}

-(NSString *)description {
    return [NSString stringWithFormat:@"My name is %@. I'm a %@. I'm %li years old. My weight is %f and height is %f", self.name, man(self.gender), (long)self.age, self.weight, self.height];
}

-(void)swim {
    NSLog(@"%@ swim", self.name ? [self.name uppercaseString] : @"Swimmer");
}

@end
