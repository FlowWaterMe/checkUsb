//
//  AppDelegate.m
//  checkUsb
//
//  Created by Young on 11/29/17.
//  Copyright © 2017 com.HY. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end
@implementation AppDelegate : NSObject 

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)btcheckusb:(id)sender {
    unsigned short pidA,vidA,locA;
    vidA = HexToLong([[m_vid stringValue]UTF8String]);
    pidA = HexToLong([[m_pid stringValue]UTF8String]);
    locA = HexToLong([[m_locid stringValue]UTF8String]);
    int ret = CheckUSBHID(vidA,pidA,locA,2000);
    NSLog(@"*******%d",ret);
    const char * c = ToHex((unsigned short)ret);
//    [m_matchlocid setStringValue:[NSString stringWithUTF8String:c]];
    [m_matchlocid setIntValue:ret];
//    GetUsbSerialNumber(0x05ac,0x8290);
}
- (IBAction)btlooppanel:(id)sender
{
    [looppanle makeKeyAndOrderFront:nil];
}
@end
