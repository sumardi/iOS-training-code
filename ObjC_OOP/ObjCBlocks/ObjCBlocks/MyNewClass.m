//
//  MyNewClass.m
//  ObjCBlocks
//
//  Created by Sumardi Shukor on 5/3/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "MyNewClass.h"

@implementation MyNewClass

+ (PBlock)blockRaisedToPower:(NSInteger)y
{
    PBlock block = ^NSInteger (NSInteger x)
    {
        return pow(x, y);
    };
    
    return [block copy];
}

@end
