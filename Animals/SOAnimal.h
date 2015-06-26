//
//  SOAnimal.h
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SOAnimal : NSObject

@property (strong, nonatomic) NSString *nickName;

@property (assign, nonatomic) BOOL predator;
@property (assign, nonatomic) BOOL wild;

- (void)makeMovement;

@end
