/*
 *  HelperMain.m
 *  Growl
 *
 *  Created by Karl Adam on Thu Apr 22 2004.
 *  Copyright (c) 2004 __MyCompanyName__. All rights reserved.
 *
 */
#import "GrowlController.h"

int main() {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[NSApplication sharedApplication];

	GrowlController *theOneRingToRuleThemAll;
        theOneRingToRuleThemAll = [[[GrowlController alloc] init] autorelease];
	
	[NSApp run];
	
	[NSApp release];
	[pool release];
	
	return EXIT_SUCCESS;
}

