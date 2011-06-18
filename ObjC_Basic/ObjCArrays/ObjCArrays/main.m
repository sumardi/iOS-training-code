//
//  main.m
//  ObjCArrays
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSDate *myDate = [[NSDate alloc] init];
    
    NSMutableArray *myArray = [NSMutableArray arrayWithObjects:@"one",@"two",myDate,
                               nil];
    
    [myDate release];
    
    [myArray addObject:@"three"];
    [myArray removeObjectAtIndex:1];
    
    NSLog(@"The array count is %lu and the second element is: %@", 
          [myArray count], [myArray objectAtIndex:1]);

    [pool drain];
    return 0;
}

