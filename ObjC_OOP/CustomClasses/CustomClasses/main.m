//
//  main.m
//  CustomClasses
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Access.h"
#import "ClassLevel.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        Fraction *frac = [[Fraction alloc] init];
        
        // set the values
        [frac setNumerator: 1];
        [frac setDenominator: 3];
        
        // output
        NSLog(@"The fraction is : %@", [frac print]);
        
        Fraction *frac2 = [[Fraction alloc] init];
        [frac2 setNumerator: 1 andDenominator: 5];
        
        NSLog(@"Fraction 2 is : %@", [frac2 print]);
        
        Fraction *frac3 = [[Fraction alloc] initWithNumerator: 3 denominator: 10];
        NSLog(@"Fraction 3 is : %@", [frac3 print]);
        
        // free memory

        Access *a = [[Access alloc] init];
        a->publicVar = 5;
        NSLog(@"Public var : %i", a->publicVar);
        
        // doesn't compile
        //a->privateVar = 10;
        //NSLog(@"Private var : %i", a->privateVar);
        
        ClassLevel *c1 = [[ClassLevel alloc] init];
        ClassLevel *c2 = [[ClassLevel alloc] init];
        
        // print count
        NSLog(@"ClassLevel count : %i", [ClassLevel initCount]);
        
        ClassLevel *c3 = [[ClassLevel alloc] init];
        
        // print count again
        NSLog(@"ClassLevel count : %i", [ClassLevel initCount]);
        
    
    }
    return 0;
}

