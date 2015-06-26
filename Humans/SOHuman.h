//
//  SOHuman.h
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define man(x) x == 1 ? @"Man" : x == 2 ? @"Woman" : @"No gender"

@interface SOHuman : NSObject

@property (strong, nonatomic) NSString *name;

@property (assign, nonatomic) int gender;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) NSUInteger age;

- (void)makeMovement;

@end
