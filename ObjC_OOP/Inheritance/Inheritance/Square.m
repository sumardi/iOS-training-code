//
//  Square.m
//  Inheritance
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "Square.h"


@implementation Square

- (id)initWithSize:(int)s
{
    self = [super init];
    if ( self ) {
        [self setSize: s];
    }
    
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)setSize:(int)s
{
    width = s;
    height = s;
}

- (int)size
{
    return width;
}

- (void)setWidth:(int)w
{
    [self setSize: w];
}

- (void)setHeight:(int)h
{
    [self setSize:h];
}

@end
