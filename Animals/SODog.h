//
//  SODog.h
//  SOArray(lesson5)
//
//  Created by Sergey on 27.05.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "SOAnimal.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"

@interface SODog : SOAnimal <Jumpers, Swimmers, Runners>

@end
