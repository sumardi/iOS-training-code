//
//  NSString+ConvertWhitespace.m
//  Categories
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "NSString+ConvertWhitespace.h"


@implementation NSString (NSString_ConvertWhitespace)

-(NSString *) convertWhitespace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
}

@end
