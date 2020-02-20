//
//  AppDelegate.h
//  DZ6
//
//  Created by IOSfish on 10.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

typedef enum {
    TDplusEV,
    TD0EV,
    TDminusEV
} TDpokerplayer;

@property (assign, nonatomic) TDpokerplayer mtt;
@property (assign, nonatomic) TDpokerplayer cash;
@property (assign, nonatomic) TDpokerplayer spin;





@end

