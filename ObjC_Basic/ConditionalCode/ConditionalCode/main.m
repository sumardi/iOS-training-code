//
//  main.m
//  ConditionalCode
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        // When an application needs to make a decision, we use a conditional
        
        // If-Statement
        // An if statement does what it sounds like, 
        // it checks to see if something is true, then acts either way. 
        // For example:

        int i = 20;
        if(i > 10) {
            NSLog(@"i is greater than 10");
        } else {
            NSLog(@"i is less than or equal to 10");
        }
        
        int number_to_test = 10;
        
        if(number_to_test % 2 == 0) {
            NSLog(@"The number is even.");
        } else {
            NSLog(@"The number is odd.");
        }
        
        
        // create a variable - try different values
        int category = 42;
        
        
        // Switch-Statement
        
        switch (category) {
            case 40:
                NSLog(@"It's a category 40");
                break;
            case 41:
                NSLog(@"It's a category 41");
                break;
            case 42:
                NSLog(@"It's case 42");
                // this will have fall-thru, as there is no break.
            case 43:
                // this will fall thru.
            case 44:
                NSLog(@"It's a category 42, or 43, or 44");
                break;
            default:  // "if none of the above is true"
                NSLog(@"I don't know what it was!");
                break;
        }

        // Relational Operator
        // ==   equal to
        // !=   not equal to
        // <    less than
        // <=   less than or equal to
        // >    greater than
        // >=   greater than or equal
    
    }
    return 0;
}

