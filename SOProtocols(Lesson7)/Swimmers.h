//
//  Swimmers.h
//  SOProtocols(Lesson7)
//
//  Created by Sergey on 21.06.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Swimmers <NSObject>


@optional

@property (assign, nonatomic) CGFloat breathHolding;

- (void)dive;


@required

@property (assign, nonatomic) CGFloat maxDeep;
@property (strong, nonatomic) NSString *valueOfDeep;

- (void)swim;


@end
