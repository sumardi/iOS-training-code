//
//  SimpleClass.m
//  Debugging
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "SimpleClass.h"

@implementation SimpleClass

@synthesize name, myNumber;

- (id)init
{
    self = [super init];
    if (self) {
        name = [[NSString alloc] initWithFormat:@"Example name"];
        myNumber = arc4random() % 100;
    }
    
    return self;
}

- (void)simpleMethod
{
    NSLog(@"In the class method");
}

@end
