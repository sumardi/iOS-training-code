//
//  SimpleClass.m
//  Debugging
//
//  Created by Simon Allardice on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleClass.h"


@implementation SimpleClass

@synthesize name, myNumber;

-(void)simpleMethod {
    NSLog(@"In the class method");
}

- (id)init
{
    self = [super init];
    if (self) {
        name = [[NSString alloc] initWithFormat:@"Example name"];
        myNumber = arc4random() % 100;
    }
    
    return self;
}

- (void)dealloc
{
    [name release];
    [super dealloc];
}

@end
