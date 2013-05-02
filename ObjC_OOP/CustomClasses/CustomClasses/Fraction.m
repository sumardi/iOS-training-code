//
//  Fraction.m
//  CustomClasses
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

- (Fraction *)initWithNumerator:(int)n denominator:(int)d
{
    self = [super init];
    if (self) {
        [self setNumerator:n andDenominator:d];
    }
    
    return self;
}

- (NSString *)print
{
    return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

- (void)setNumerator:(int)n
{
    numerator = n;
}

- (void)setDenominator:(int)d
{
    denominator = d;
}

- (int)denominator
{
    return denominator;
}

- (int)numerator
{
    return numerator;
}

- (void)setNumerator:(int)n andDenominator:(int)d
{
    numerator = n;
    denominator = d;
}

@end
