//
//  AppDelegate.h
//  Regex Tester
//
//  Created by wangyongqi on 1/16/13.
//  Copyright (c) 2013 wyq. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (nonatomic, strong) IBOutlet NSTextField *regexTextField;
@property (nonatomic, strong) IBOutlet NSTextField *replaceWithTextField;
@property (nonatomic, strong) IBOutlet NSTextField *searchTextField;
@property (nonatomic, strong) IBOutlet NSTextField *resultTextField;

- (IBAction)matchSearchText:(id)sender;
- (IBAction)checkOption:(NSButton *)sender;


@end
