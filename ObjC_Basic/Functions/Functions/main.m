//
//  main.m
//  Functions
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction(void) 
{    
    for ( int i = 1 ; i <= 20 ; i++ ) { 
        if (i % 5 == 0) {
            continue;  // jump back to the top.
        }
        NSLog(@"The value of the index is %i", i);
    }
}

// function to calculate the absolute value
float absoluteValue(float x) 
{
    if(x < 0) {
        x = -x;
    }
    
    return x;
}

// function to compute the square root of a number
float squareRoot(float x) 
{
    const float epsilon = .00001;
    float       guess   = 1.0;
    
    while(absoluteValue(guess * guess - x) >= epsilon) {
        guess = (x / guess + guess) / 2.0;
    }
    
    return guess;
}

// recursive function to calculate the factorial of a positive integer
unsigned long int factorial(unsigned int n) 
{
    unsigned long int result;
    
    if(n == 0) {
        result = 1;
    } else {
        result = n * factorial(n - 1);
    }
    
    return result;
}


int main (int argc, const char * argv[])
{

    @autoreleasepool {

        // call the function
        myFunction();
        
        float result = absoluteValue(-15.5);
        NSLog(@"result = %.2f", result);

        NSLog(@"squareRoot (2.0) = %f", squareRoot(2.0));
        NSLog(@"squareRoot (144.0) = %f", squareRoot(144.0));
        
        unsigned int j;
        for(j = 0; j < 11; j++) {
            NSLog(@"%2u! = %lu", j, factorial(j));
        }
    
    }
    return 0;
}

