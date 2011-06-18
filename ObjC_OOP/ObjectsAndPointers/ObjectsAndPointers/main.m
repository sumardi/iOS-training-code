//
//  main.m
//  ObjectsAndPointers
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction(NSString *foo) {
    NSLog(@"The message was %@", foo);
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *message = @"Hello";
    myFunction(message); // do not need the asterisk
    
    [pool drain];
    return 0;
}

