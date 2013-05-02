//
//  main.m
//  Enumerations
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        enum seatPreference { window = 99, aisle = 199, middle = 399  };
        
        enum seatPreference bobSeatPreference = aisle;
        enum seatPreference fredSeatPreference = window;
        // enum seatPreference joanSeatPreference = front;
        
        if (bobSeatPreference == window) {
            // do something
        }
        
        NSLog(@"Fred wants %i", fredSeatPreference);
    

    }
    return 0;
}

