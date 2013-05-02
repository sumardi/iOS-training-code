//
//  main.m
//  ExceptionHandling
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
    
    // this code would by itself throw an error - unrecognized selector.
//    id today = [[NSDate alloc] init];
//    [today uppercaseString];
    
    // slight difference from the movie - I'm declaring outside
    // the try/catch, so the variable will have wider scope and I
    // can release it later
//        id today = [[NSDate alloc] init];
//
//        // but in a try / catch, it's fine
//        @try {
//            [today uppercaseString];
//        }
//        @catch (NSException *exception) {
//            NSLog(@"There was an error: %@", exception);
//        }
//        @finally {
//            NSLog(@"I'm in the finally block");
//        }
    
    }
    
    return 0;
}

