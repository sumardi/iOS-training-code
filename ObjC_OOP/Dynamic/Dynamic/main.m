//
//  main.m
//  Dynamic
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "First.h"
#import "Second.h"
#import "Third.h"
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // create an array
    NSMutableArray *lotsOfObjects = [[NSMutableArray alloc] init];
    
    First  *f = [[First alloc] init];
    Second *s = [[Second alloc] init];
    Third  *t = [[Third alloc] init];
    
    [s secondOnly];
    // create 100 objects, randomly selected
    for (int i = 0; i < 100 ; i++ ) {
        int whichObject = (arc4random() %3) +1;
        
        id temp;
        
        switch (whichObject) {
            case 1:
                temp = [[First alloc] init];
                break;
            case 2:
                temp = [[Second alloc] init];
                break;
            default:
                temp = [[Third alloc] init];
                break;
        }
        [lotsOfObjects addObject:temp];
        [temp release];
    }
    
    //fast enumerate through the objects
    for ( id eachObject in lotsOfObjects) {
        // they're being treated as "id" but still this 
        // message will be sent to the right class
        NSLog(@"The object is %@", eachObject);
        // check if the id "is a" Second 
        if ([eachObject isKindOfClass:[Second class]])
        {
            [eachObject secondOnly];
        }
        // or check if it responds to the message "secondOnly"
        // (doesn't matter what class it is)
        if ([eachObject respondsToSelector:@selector(secondOnly)] ) {
            [eachObject secondOnly];
        }
    }
    
    // release the mutable array
    [lotsOfObjects release];
    [f release];
    [s release];
    [t release];
    
    [pool drain];
    return 0;
}

