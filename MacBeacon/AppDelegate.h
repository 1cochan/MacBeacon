//
//  AppDelegate.h
//  MacBeacon
//
//  Created by B04536 on 2014/04/30.
//  Copyright (c) 2014年 sgspecial. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <IOBluetooth/IOBluetooth.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, CBPeripheralManagerDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong, nonatomic) CBPeripheralManager *manager;

@end
