//
//  main.m
//  Dictionaries
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    // create a mutable dictionary
    NSMutableDictionary *states =
    [NSMutableDictionary dictionaryWithObjectsAndKeys:
     @"Selangor", @"Shah Alam",
     @"Sabah", @"Kota Kinabalu",
     @"Sarawak", @"Kuching",
     @"Johor", @"Johor Bahru",
     @"Perak", @"iPoh",
     nil];
    
    // add to it
    [states setObject:@"Pahang" forKey:@"Kuantan"];
    
    NSString *someState = @"Kuantan";
    
    NSLog(@"%@ is capital city of %@", someState, [states objectForKey:someState]);
    
    // Fast Enumeration
//    for (NSString *stateAbbrev in states) {
//        NSLog(@"%@ is capital city of %@", stateAbbrev, [states objectForKey:stateAbbrev]);
//    }
    
    [pool drain];
    return 0;
}
