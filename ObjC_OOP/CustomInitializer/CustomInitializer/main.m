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

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Player *p1 = [[Player alloc] initWithScore:5000];
    
    [p1 release];

    [pool drain];
    return 0;
}

