//
//  GSAppDelegate.m
//  WhyTunes
//
//  Created by Simon Whitaker on 20/06/2013.
//  Copyright (c) 2013 Goo Software Ltd. All rights reserved.
//

enum {
    kRest,
    kBasso,
    kBlow,
    kBottle,
    kFrog,
    kFunk,
    kGlass,
    kHero,
    kMorse,
    kPing,
    kPop,
    kPurr,
    kSosumi,
    kSubmarine,
    kTink
};

#import "GSAppDelegate.h"

@interface GSAppDelegate() {
    NSTimer *_timer;
}

@end

@implementation GSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(GS_play) userInfo:nil repeats:YES];
    
}

- (void)GS_play {
    
    static int notes[4] = {
        kPurr,
        kPurr,
        kFrog,
        kTink,
    };
    static int numberOfNotes = sizeof(notes)/sizeof(int);
    static int beat = 0;
    
    switch (notes[beat]) {
        case kBasso:
            break;
        case kBlow:
            break;
        case kBottle:
            break;
        case kFrog:
            break;
        case kGlass:
            break;
        case kHero:
            break;
        case kMorse:
            break;
        case kPing:
            break;
        case kPop:
            break;
        case kPurr:
            break;
        case kSosumi:
            break;
        case kSubmarine:
            break;
        case kTink:
            break;
        default:
            break;
    }
    
    beat = ++beat % numberOfNotes;
}

@end
