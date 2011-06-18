//
//  main.m
//  Pointers
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int count = 10;
    int *int_pointer;
    
    int_pointer = &count;
    
    NSLog(@"count = %i, int_pointer = %i", count, *int_pointer);
    
    count = 20;
    
    NSLog(@"New value : count = %i, int_pointer = %i", count, *int_pointer);

    [pool drain];
    return 0;
}

