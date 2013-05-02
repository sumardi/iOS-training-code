//
//  main.h
//  CustomInitializer
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        Player *p1 = [[Player alloc] initWithScore:5000];
        NSLog(@"Player 1, Score: %i", [p1 getScore]);
        
        Player *p2 = [[Player alloc] init];        
        NSLog(@"Player 2, Score: %i", [p2 getScore]);
    }
    
    return 0;
}

