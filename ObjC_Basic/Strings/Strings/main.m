//
//  main.m
//  Strings
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // char can contain only a single character. (single quote)
    char plusSign = '+';
    // char minusSign = "-"; - error
    
    // NSLog() is a character string. (double quote)
    NSLog(@"The symbol of plus sign is %c", plusSign);
    // NSLog(@''); - error

    [pool drain];
    return 0;
}

