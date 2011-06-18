//
//  Player.m
//  Deallocing
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "Player.h"


@implementation Player

- (id)init
{
    self = [super init];
    if (self) {
        startDate = [[NSDate alloc] init];
    }
    
    return self;
}

// dealloc is for cleanup
- (void)dealloc
{
    [startDate release];
    [super dealloc];
}

@end
