//
//  main.m
//  Debugging
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleClass.h"

void simpleFunction();

int main (int argc, const char * argv[])
{
    // just create your own breakpoints and start exploring!
    
    // local variables
    int a = 100, b = 200;
    a = a + b;

    @autoreleasepool {

        NSString *simpleString = [[NSString alloc] initWithFormat:@"Test string"];
        NSLog(@"The string is %@", [simpleString uppercaseString]);
        
        simpleFunction();
        
        NSLog(@"Creating a custom class");
        SimpleClass *foo = [[SimpleClass alloc] init];
        [foo simpleMethod];
        
        simpleFunction();

        // create an array
        NSMutableArray *lotsOfObjects = [[NSMutableArray alloc] init];
        for (int i = 0; i < 100 ; i++ ) {
            id temp = [[SimpleClass alloc] init];
            [lotsOfObjects addObject:temp];
        }
        
        NSLog(@"Now, out of the loop");

    
    }
    return 0;
}


void simpleFunction() {
    int a = 99;
    int b = 100;
    int c = a + b;
    NSLog(@"In the simple function, writing out %i", c);
}
