//
//  AppDelegate.m
//  SOProtocols(Lesson7)
//
//  Created by Sergey on 21.06.15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "SODog.h"
#import "SORabbit.h"
#import "SOBicycler.h"
#import "SORunner.h"
#import "SORabbit.h"
#import "SOSwimmer.h"

typedef NS_ENUM(NSUInteger, SOJumpValue) {
    SOKilometrsJumpValue = 1,
    SOMetersJumpValue = 10,
    SOMilimetersJumpValue = 20
};

typedef NS_ENUM(NSUInteger, SODeepValue) {
    SOKilometrsDeepValue = 1,
    SOMetersDeepValue = 10,
    SOMilimetersDeepValue = 20
};

typedef NS_ENUM(NSUInteger, SOSpeedValue) {
    SOKilometrsSpeedValue = 1,
    SOMetersSpeedValue = 10
};

@interface AppDelegate ()

@end

@implementation AppDelegate

NSString* makeStringForJump(NSUInteger value) {
    switch (value) {
        case 1:
            return @"kilometers";
        case 10:
            return @"meters";
        case 20:
            return @"milimetrs";
        default:
            return @"none";
    }
}

NSString* makeStringForDeep(NSUInteger value) {
    switch (value) {
        case 1:
            return @"kilometers";
        case 10:
            return @"meters";
        case 20:
            return @"milimetrs";
        default:
            return @"none";
    }
}

NSString* makeStringForSpeed(NSUInteger value) {
    switch (value) {
        case 1:
            return @"kilometers/hour";
        case 10:
            return @"meters/seconds";;
        default:
            return @"none";
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    SODog *dog = [[SODog alloc] init];
    dog.maxHeight = 100.f;
    dog.maxDeep = 50.f;
    dog.maxSpeed = 80.f;
    if ([dog respondsToSelector:@selector(gastrocnemius)]) {
        dog.gastrocnemius = 4.f;
    }
    if ([dog respondsToSelector:@selector(breathHolding)]) {
        dog.breathHolding = 5.f;
    }
    dog.valueOfDeep = makeStringForDeep(SOKilometrsDeepValue);
    dog.valueOfJump = makeStringForJump(SOMetersJumpValue);
    dog.valueOfSpeed = makeStringForSpeed(SOMetersSpeedValue);
    dog.nickName = @"Spot";
    
    SORabbit *rabbit = [SORabbit new];
    rabbit.maxHeight = 100.f;
    rabbit.valueOfJump = makeStringForJump(SOMetersJumpValue);
    
    SOBicycler *bicycler = [SOBicycler new];
    
    SORunner *runner = [SORunner new];
    runner.maxSpeed = 80.f;
    runner.valueOfSpeed = makeStringForSpeed(SOMetersSpeedValue);
    runner.name = @"Sergey";
    
    SOSwimmer *swimmer = [SOSwimmer new];
    swimmer.maxDeep = 50.f;
    swimmer.valueOfDeep = makeStringForDeep(SOKilometrsDeepValue);
    
    NSArray *array = @[dog, rabbit, bicycler, runner, swimmer];
    
    for (id currentObject in array) {
        if ([currentObject conformsToProtocol:@protocol(Jumpers)]) {
            NSObject <Jumpers> *jumper = currentObject;
            NSLog(@"%f, %@", jumper.maxHeight, jumper.valueOfJump);
            [jumper jump];
            if ([jumper respondsToSelector:@selector(smile)]) {
                [jumper smile];
            } else {
                NSLog(@"Doen't have smile function");
            }
            if ([jumper respondsToSelector:@selector(gastrocnemius)]) {
                NSLog(@"%f", jumper.gastrocnemius);
            } else {
                NSLog(@"Doesn't have gastrocnemius");
            }
        }
        if ([currentObject conformsToProtocol:@protocol(Swimmers)]) {
            NSObject <Swimmers> *swimmer = currentObject;
            NSLog(@"%f, %@", swimmer.maxDeep, swimmer.valueOfDeep);
            [swimmer swim];
            if ([swimmer respondsToSelector:@selector(dive)]) {
                [swimmer dive];
            }
            if ([swimmer respondsToSelector:@selector(breathHolding)]) {
                NSLog(@"%f", swimmer.breathHolding);
            }
        }
        if ([currentObject conformsToProtocol:@protocol(Runners)]) {
            NSObject <Runners> *runner = currentObject;
            NSLog(@"%f, %@", runner.maxSpeed, runner.valueOfSpeed);
            [runner run];
            if ([runner respondsToSelector:@selector(overtakeAnOponent)]) {
                [runner overtakeAnOponent];
            }
        }
        if (![currentObject conformsToProtocol:@protocol(Jumpers)] && ![currentObject conformsToProtocol:@protocol(Swimmers)] && ![currentObject conformsToProtocol:@protocol(Runners)]) {
            if ([currentObject isKindOfClass:[SOHuman class]]) {
                NSLog(@"HUMAN lAZY");
            }
            if ([currentObject isKindOfClass:[SOAnimal class]]) {
                NSLog(@"ANIMAL lAZY");
            }
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
