//
//  main.m
//  CommonRuntimeErrors
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        // this code will fail
        id today = [[NSDate alloc] init];
        [today uppercaseString];
    }
    
    return 0;
}

