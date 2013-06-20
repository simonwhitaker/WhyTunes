//
//  GSAppDelegate.m
//  WhyTunes
//
//  Created by Simon Whitaker on 20/06/2013.
//  Copyright (c) 2013 Goo Software Ltd. All rights reserved.
//

#import "GSAppDelegate.h"

@interface GSAppDelegate() {
    NSTimer *_timer;
}

@end

@implementation GSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.15 target:self selector:@selector(GS_play) userInfo:nil repeats:YES];
    
}

- (void)GS_play {
    
    static char notes[] = "\
b-------b-------b-------b-------\
b-------b-------b-------b---g---\
b---P---b---P---b---P-P-b---P--P\
b---P---b---P---b---P-P-b---P--P\
b-t-P---b-t-P---b-t-P-P-b-t-P--P\
b-t-P---b-t-P---b-t-P-P-b-t-P--P\
b-ttP-t-btttP-t-b-ttP-t-btttP-tP\
b-ttP-t-btttP-t-b---P----tt-tt-t\
";
    static int numberOfNotes = sizeof(notes)/sizeof(char) - 1;
    static int beat = 0;
    
    switch (notes[beat]) {
        case 'b': // Basso
            break;
        case 'B': // Blow
            break;
        case 'o': // Bottle
            break;
        case 'f': // Frog
            break;
        case 'g': // Glass
            break;
        case 'h': // Hero
            break;
        case 'm': // Morse
            break;
        case 'p': // Ping
            break;
        case 'P': // Pop
            break;
        case 'r': // Purr
            break;
        case 's': // Sosumi
            break;
        case 'S': // Submarine
            break;
        case 't': // Tink
            break;
        default:
            break;
    }
    
    beat = ++beat % numberOfNotes;
}

@end
