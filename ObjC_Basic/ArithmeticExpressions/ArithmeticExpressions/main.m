//
//  main.m
//  ArithmeticExpressions
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int a = 100;
    int b = 2;
    int c = 25;
    int d = 4;
    int result;
    
    result = a - b;     // substraction
    NSLog(@"a - b = %i", result);
    
    result = b * c;     // multiplication
    NSLog(@"b * c = %i", result);
    
    result = a / c;     // division
    NSLog(@"a / c = %i", result);
    
    result = a + b * c; // precedence
    NSLog(@"a + b * c = %i", result);
    
    NSLog(@"a * b + c * d = %i", a * b + c * d);

    result = a % b;     // modulus
    NSLog(@"a %% b = %i" , result);
    
    [pool drain];
    return 0;
}

