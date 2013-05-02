//
//  main.m
//  Categories
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+ConvertWhitespace.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        NSString *sentence = @"The quick brown fox jumped over the lazy dog";
        
        NSLog(@"The sentence is %@", [sentence convertWhitespace]);

    }
    return 0;
}

