//
//  main.m
//  ObjCBlocks
//
//  Created by Sumardi Shukor on 5/3/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyNewClass.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Use the __block keyword to be able to use it inside the block
        __block int x = 0;
        
        void (^increment)() = ^void { x++; };
        
        NSLog(@"%i", x); // return "0"
        increment();
        increment();
        NSLog(@"%i", x); // return "2"
        
        PBlock square = [MyNewClass blockRaisedToPower:2];
        NSLog(@"%li", (long)square(3));
        NSLog(@"%li", (long)square(12));
    }
    
    return 0;
}



