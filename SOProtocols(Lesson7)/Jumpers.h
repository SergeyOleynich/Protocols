//
//  Jumpers.h
//  SOProtocols(Lesson7)
//
//  Created by Sergey on 21.06.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Jumpers <NSObject>


@optional

@property (assign, nonatomic) CGFloat gastrocnemius;

- (void)smile;


@required

@property (assign, nonatomic) CGFloat maxHeight;
@property (strong, nonatomic) NSString *valueOfJump;

- (void)jump;


@end
