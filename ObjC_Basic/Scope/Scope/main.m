//
//  main.m
//  Scope
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
    
        int foo = 10;
        
        for ( int i = 1 ; i < 10 ; i++ ) { 
            // all sorts of stuff
            int foo = 55;
            NSLog(@"The value of foo is %i", foo);
        }
        
        NSLog(@"The last value of foo was %i", foo);

    }
    return 0;
}
