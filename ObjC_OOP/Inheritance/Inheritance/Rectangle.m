//
//  Rectangle.m
//  Inheritance
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "Rectangle.h"


@implementation Rectangle

-(id) initWithWidth: (int) w height: (int) h 
{
    self = [super init];
    if ( self ) {
        [self setWidth: w height: h];
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

-(void) setWidth: (int) w 
{
    width = w;
}

-(void) setHeight: (int) h 
{
    height = h;
}

-(void) setWidth: (int) w height: (int) h 
{
    width = w;
    height = h;
}

-(int) width 
{
    return width;
}

-(int) height 
{
    return  height;
}

-(void) print {
    NSLog(@"width = %i, height = %i", width, height);
}

- (void)dealloc
{
    [super dealloc];
}

@end
