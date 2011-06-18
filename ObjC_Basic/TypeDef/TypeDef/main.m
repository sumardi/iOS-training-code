//
//  main.m
//  TypeDef
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

typedef enum  { window = 99, aisle = 199, middle = 399  } seatPreference;

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    seatPreference bobSeatPreference = aisle;
    seatPreference fredSeatPreference = window;

    if (bobSeatPreference == window) {
        // do something
    }
    
    NSLog(@"Fred wants %i", fredSeatPreference);
    
    [pool drain];
    return 0;
}

