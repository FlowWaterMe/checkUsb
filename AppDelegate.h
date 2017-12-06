//
//  AppDelegate.h
//  checkUsb
//
//  Created by Young on 11/29/17.
//  Copyright © 2017 com.HY. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import "USB.h"

@interface AppDelegate : NSObject
{
    @private
    IBOutlet NSTextField *m_vid;
    IBOutlet NSTextField *m_pid;
    IBOutlet NSTextField *m_locid;
    IBOutlet NSTextField *m_matchlocid;

    IBOutlet NSPanel * looppanle;
}
- (IBAction)btcheckusb:(id)sender;
- (IBAction)btlooppanel:(id)sender;

@end

