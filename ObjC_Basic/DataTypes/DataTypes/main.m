//
//  main.m
//  DataTypes
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        // An integer (whole numbers), e.g. 1, 2, 9, 1000 
        int numberOfItems = 20; 
        
        // Floating point number, e.g. 1.2, 1.7, 5.8
        float price = 40.20;
        
        // A character of the local character set. char actually is a single character like 'a' or '3'
        char character = 'c';
        
        // Positive numbers only
        unsigned int numberOfStaff = 150;
         
        // Format specifiers:
        // %i (integer) %f (float) %e (double) %c (char)
        NSLog(@"The value of numberOfItems is => %i", numberOfItems);
        NSLog(@"The value of price is => %.2f", price);
        NSLog(@"The value of items is => %c ", character);
        NSLog(@"The value of items is => %i ", numberOfStaff);
        
        // Objective-C data types
        BOOL isSingle = YES; // YES/NO
        // BOOL is just a special int, so you should be able to use %i
        NSLog(@"The value of isSingle is %d", isSingle);
        
        // id - An object
        id objectOne;
        objectOne = [NSDate date];
        NSLog(@"Today's date is : %@", objectOne);
    
    }
    return 0;
}

