//
//  main.m
//  NumericDataTypes
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int a = 25;
    int b = 2;
    
    // Typecasting
    float result = (float) a / b;
    
    NSLog(@"The result is %f", result);
    

    [pool drain];
    return 0;
}

