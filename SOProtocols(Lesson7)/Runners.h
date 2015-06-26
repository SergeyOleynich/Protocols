//
//  Runners.h
//  SOProtocols(Lesson7)
//
//  Created by Sergey on 21.06.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Runners <NSObject>


@optional

@property (assign, nonatomic) CGFloat height;

- (void)overtakeAnOponent;


@required

@property (assign, nonatomic) CGFloat maxSpeed;
@property (strong, nonatomic) NSString *valueOfSpeed;

- (void)run;


@end
