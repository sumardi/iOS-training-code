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
    @autoreleasepool {

        NSString *message = @"Hello";
        myFunction(message); // do not need the asterisk
    
    }
    return 0;
}

