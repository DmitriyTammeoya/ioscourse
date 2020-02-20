//
//  AppDelegate.m
//  DZ6
//
//  Created by IOSfish on 10.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //BOOL sex = YES;
    //NSInteger kakoetochislo = 99;
    //CGFloat drobnoe = 3.7f;

    //NSInteger test = kakoetochislo;
    //- (int) test: (NSInteger) test {return test;};
    
    //NSLog (@"%d, %ld, %f", sex, (long)kakoetochislo, drobnoe);
    
    AppDelegate* pokerplayer = [[AppDelegate alloc] init];
    [pokerplayer setMtt: TDplusEV];
    [pokerplayer setSpin:TDminusEV];
    
     
    
    
    
    CGRect rect;
    rect = CGRectMake(4, 4, 3, 3);
    
    CGPoint point1;
    point1 = CGPointMake(arc4random() % 11, arc4random() % 11);
    CGPoint point2;
    point2 = CGPointMake(arc4random() % 11, arc4random() % 11);
    CGPoint point3;
    point3 = CGPointMake(arc4random() % 11, arc4random() % 11);
    CGPoint point4;
    point4 = CGPointMake(arc4random() % 11, arc4random() % 11);
    CGPoint point5;
    point5 = CGPointMake(arc4random() % 11, arc4random() % 11);
    
    NSArray* pointarray = [NSArray arrayWithObjects:
                          [NSValue valueWithCGPoint:point1],
                          [NSValue valueWithCGPoint:point2],
                          [NSValue valueWithCGPoint:point3],
                          [NSValue valueWithCGPoint:point4],
                          [NSValue valueWithCGPoint:point5],
                          nil];
    for (NSValue* value in pointarray) {
        CGPoint p = [value CGPointValue];
        if (CGRectContainsPoint(rect, p)) {
            NSLog (@" win %@", NSStringFromCGPoint(p));}
        else {NSLog (@" lose %@", NSStringFromCGPoint(p));}
                     }
                     
                    

    
    //NSLog(@"%@, %@", NSStringFromCGPoint(point1), NSStringFromCGPoint(point2));
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
