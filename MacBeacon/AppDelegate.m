//
//  AppDelegate.m
//  MacBeacon
//
//  Created by B04536 on 2014/04/30.
//  Copyright (c) 2014年 sgspecial. All rights reserved.
//

#import "AppDelegate.h"
#import "MBCBeaconAdvertisementData.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // CBPeripheralManagerを初期化
    self.manager = [[CBPeripheralManager alloc] initWithDelegate:self
                                                           queue:nil];
}


- (void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral {
//    // Bluetoothがオンのときにアドバタイズする
//    if (peripheral.state == CBPeripheralManagerStatePoweredOn) {
//        
//        // UUIDを適当に作成(uuidgenコマンドで生成する)
//        NSUUID *proximityUUID = [[NSUUID alloc] initWithUUIDString:@"1E21BCE0-7655-4647-B492-A3F8DE2F9A02"];
//        
//        // アドバタイズ用のデータを作成
//        MBCBeaconAdvertisementData *beaconData = [[MBCBeaconAdvertisementData alloc] initWithProximityUUID:proximityUUID
//                                                              major:1
//                                                              minor:1
//                                                      measuredPower:-58];
//        
//        // アドバタイズ開始
//        [peripheral startAdvertising:beaconData.beaconAdvertisement];
//    }
}

@end
