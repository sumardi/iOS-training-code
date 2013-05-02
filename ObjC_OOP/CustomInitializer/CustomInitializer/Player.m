//
//  Player.m
//  CustomInitializer
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "Player.h"


@implementation Player

- (id)initWithScore:(int)s
{
    self = [super init];
    if (self) {
        score = s;
    }
    
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        score = 2000;
    }
    
    return self;
}

- (int)getScore
{
    return score;
}


@end
