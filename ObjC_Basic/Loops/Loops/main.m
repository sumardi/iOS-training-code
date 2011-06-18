//
//  main.m
//  Loops
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // Loop
    // Let us loop through a piece of code and execute it multiple times.
    
    // For Statement
    int n, triangularNumber;
    triangularNumber = 0;
    
    for(n = 1; n <= 10; n = n + 1) {
        triangularNumber = triangularNumber + n;
    }
    
    NSLog(@"The 10th tringular number is %i", triangularNumber);
    
    // While Statement
    int count = 1;

    while(count <= 5) {
        NSLog(@"%i", count);
        ++count;
    }
    
    // Do Statement
    int right_digit, number = 14589;
    
    do {
        right_digit = number % 10;
        NSLog(@"%i", right_digit);
        number = number / 10;
    } while(number != 0);

    [pool drain];
    return 0;
}

