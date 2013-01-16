//
//  AppDelegate.m
//  Regex Tester
//
//  Created by wangyongqi on 1/16/13.
//  Copyright (c) 2013 wyq. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
{
    NSRegularExpressionOptions _options;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)matchSearchText:(id)sender
{
    NSString *regexString = self.regexTextField.stringValue;
//    NSString *replaceWithString = self.replaceWithTextField.stringValue;
    NSString *searchString = self.searchTextField.stringValue;
    
    NSMutableString *results = [NSMutableString stringWithCapacity:1000];
    
    NSError *error = NULL;
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexString options:_options error:&error];
    
    NSArray *matches = [regex matchesInString:searchString options:0 range:NSMakeRange(0, [searchString length])];
    
    for (NSTextCheckingResult *result in matches) {

        [results appendFormat:@"%@\n", [searchString substringWithRange:result.range]];
    }
    
    [self.resultTextField setStringValue:results];
    
}

- (IBAction)checkOption:(NSButton *)sender {
    NSInteger tag = sender.tag;
    if ([sender state] == NSOnState) {        
        _options |= 1 << tag;
    }
    else
    {
        _options ^= 1 << tag;
    }
   }

@end
