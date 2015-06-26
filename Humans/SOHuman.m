//
//  SOHuman.m
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "SOHuman.h"

@implementation SOHuman

-(void)makeMovement {
    NSLog(@"Human move");
}

-(NSString *)description {
    return [NSString stringWithFormat:@"I don't have name and gender. I'm %li years old. My weight is %f and height is %f", (long)self.age, self.weight, self.height];
}

@end
