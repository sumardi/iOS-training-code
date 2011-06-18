//
//  ClassLevel.m
//  CustomClasses
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "ClassLevel.h"


@implementation ClassLevel

- (id)init
{
    self = [super init];
    if (self) {
        count++;
    }
    
    return self;
}

+(int) initCount {
    return count;
}

+(void) initialize {
    count = 0;
}

@end
