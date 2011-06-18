//
//  main.m
//  CStyleArrays
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // C style arrays   
    
    int multipleValues[5]; 
    multipleValues[0] = 50;
    multipleValues[1] = 90;
    
    int multipleValuesTwo[5] = {50,60,70,80,90}; 
    multipleValuesTwo[99] = 1000;
    
    NSLog(@"The value at the 3rd element is %i", multipleValuesTwo[2]);
    
    NSString *myStringArray[5] = {@"first",@"second",@"third",@"fourth",@"fifth" };
    NSLog(@"The third string element is %@",myStringArray[2]);
    
    // no bounds checking
    // fixed size.
    // can't mix types

    
    [pool drain];
    return 0;
}

