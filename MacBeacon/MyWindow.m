//
//  MyWindow.m
//  MacBeacon
//
//  Created by 足立 晃一 on 2014/05/04.
//  Copyright (c) 2014年 sgspecial. All rights reserved.
//

#import "MyWindow.h"
#import "AppDelegate.h"
#import <AppKit/AppKit.h>
#import <IOBluetooth/IOBluetooth.h>
#import "MBCBeaconAdvertisementData.h"


@implementation MyWindow

- (IBAction)btnPress:(id)sender {
    AppDelegate *appDelegate = (AppDelegate*)[[NSApplication sharedApplication] delegate];
    CBPeripheralManager *manager = appDelegate.manager;
    if(manager.isAdvertising){
        [manager stopAdvertising];
        self.btn.title = @"iBeacon停止中";
    } else{
        // UUIDを適当に作成(uuidgenコマンドで生成する)
        NSUUID *proximityUUID = [[NSUUID alloc] initWithUUIDString:@"0E21BCE0-7655-4647-B492-A3F8DE2F9A02"];
        
        // アドバタイズ用のデータを作成
        MBCBeaconAdvertisementData *beaconData = [[MBCBeaconAdvertisementData alloc] initWithProximityUUID:proximityUUID
                                                                                                     major:1
                                                                                                     minor:1
                                                                                             measuredPower:-58];
        
        // アドバタイズ開始
        [manager startAdvertising:beaconData.beaconAdvertisement];
        self.btn.title = @"iBeacon発信中";

    }
    
}
@end
