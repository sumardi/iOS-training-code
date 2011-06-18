//
//  main.m
//  Inheritance
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Rectangle.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Rectangle *rec = [[Rectangle alloc] initWithWidth: 10 height: 20];
    Square *sq = [[Square alloc] initWithSize: 15];
    
    [rec print];
    [sq print];
    
    [sq setWidth:20];
    [sq print];
    
    // isMemberOfClass
    
    // true 
    if ([sq isMemberOfClass: [Square class]] == YES) {
        NSLog(@"square is a member of square class");
    }
    
    // false
    if ([sq isMemberOfClass: [Rectangle class]] == YES) {
        NSLog(@"square is a member of rectangle class");
    }
    
    // false
    if ([sq isMemberOfClass: [NSObject class]] == YES) {
        NSLog(@"square is a member of object class");
    }
    
    // isKindOfClass
    
    // true 
    if ([sq isKindOfClass: [Square class]] == YES) {
        NSLog(@"square is a kind of square class");
    }
    
    // true
    if ([sq isKindOfClass: [Rectangle class]] == YES) {
        NSLog(@"square is a kind of rectangle class");
    }
    
    // true
    if ([sq isKindOfClass: [NSObject class]] == YES) {
        NSLog(@"square is a kind of object class");
    }
    
    // respondsToSelector
    
    // true
    if ([sq respondsToSelector: @selector(setSize:)] == YES) {
        NSLog(@"square responds to setSize: method" );
    }
    
    // false
    if ([sq respondsToSelector: @selector(nonExistant)] == YES) {
        NSLog(@"square responds to nonExistant method");
    }
    
    // true
    if ([Square respondsToSelector: @selector(alloc)] == YES) {
        NSLog(@"square class responds to alloc method");
    }
    
    // instancesRespondToSelector
    
    // false
    if ([Rectangle instancesRespondToSelector: @selector(setSize:)] == YES) {
        NSLog(@"rectangle instance responds to setSize: method");
    }
    
    // true
    if ([Square instancesRespondToSelector: @selector( setSize: )] == YES) {
        NSLog(@"square instance responds to setSize: method");
    }
    
    [rec release];
    [sq release];

    [pool drain];
    return 0;
}

