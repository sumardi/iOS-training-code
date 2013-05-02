//
//  main.m
//  ObjCLiterals
//
//  Created by Sumardi Shukor on 5/2/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Objective-C literals : one can now create literals for NSArray, NSDictionary and NSNumber
        // Previously: [NSArray arrayWithObjects:a, b, c, nil];
        NSString *a = @"a";
        NSString *b = @"b";
        NSString *c = @"c";
        NSArray *array = @[ a, b, c ];
        NSLog(@"Output => %@", array);
        
        // Previously: [NSDictionary dictionaryWithObjects:@[o1, o2, o3] forKeys:@[k1, k2, k3]];
        NSDictionary *dict = @{ @"k1" : @"o1", @"k2" : @"o2", @"k3" : @"o3" };
        NSLog(@"Output => %@", dict);
        
        // NSNumber literals
        NSNumber *number;
        
        // Previously: [NSNumber numberWithChar:'X'];
        number = @'X';
        
        // Previously: [NSNumber numberWithInt:12345];
        number = @12345;
        
        // Previously : [NSNumber numberWithUnsignedLong:12345ul];
        number = @12345ul;
        
        // Previously: [NSNumber numberWithLongLong:12345ll];
        number = @12345ll;
        
        // Previously: [NSNumber numberWithFloat:123.45f];
        number = @123.45f;
        
        // Previously: [NSNumber numberWithDouble:123.45];
        number = @123.45;
        
        // Previously: [NSNumber numberWithBool:YES];
        number = @YES;
    }
    return 0;
}

