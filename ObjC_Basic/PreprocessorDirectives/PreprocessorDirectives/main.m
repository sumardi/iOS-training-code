//
//  main.m
//  PreprocessorDirectives
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

// The #define statement
// to assign symbolic names to program constant
#define PI  3.141592654

double area(double r)
{
    return PI * r * r;
}

double circumference (double r)
{
    return 2.0 * PI * r;
}

double volume (double r)
{
    return 4.0 / 3.0 * PI * r * r * r;
}

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

#if DEBUG
    NSLog(@"radius 1: %.4f %.4f %.4f", 
          area(1.0), circumference(1.0), volume(1.0));
#endif
    
    [pool drain];
    return 0;
}

