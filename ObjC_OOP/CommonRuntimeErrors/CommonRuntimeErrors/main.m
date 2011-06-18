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

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // this code will run, even though an object is never created
    // the messages will just be ignored.
    NSString *emptyPointer;
    [emptyPointer uppercaseString];
    [emptyPointer writeToFile:@"/Users/YOURPATHHERE/stuff/txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    // this code will fail
    id today = [[NSDate alloc] init];
    [today uppercaseString];
    
    NSString *willRelease = [[NSString alloc] initWithFormat:@"Test string"];
    
    [willRelease release]; 
    // uncomment this to set the pointer to nil and allow messages to be sent to it
    //willRelease = nil;
    
    // this code should fail with EXC_BAD_ACCESS
    NSString *newString = [willRelease uppercaseString];
    NSLog(@"The new string is %@", newString);
    
    NSLog(@"Got to the end of the program!");
    
    [pool drain];
    return 0;
}

