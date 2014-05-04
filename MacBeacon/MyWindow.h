//
//  MyWindow.h
//  MacBeacon
//
//  Created by 足立 晃一 on 2014/05/04.
//  Copyright (c) 2014年 sgspecial. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyWindow : NSWindow
@property (strong) IBOutlet NSButton *btn;
- (IBAction)btnPress:(id)sender;

@end
