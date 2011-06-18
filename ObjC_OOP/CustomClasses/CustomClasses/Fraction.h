//
//  Fraction.h
//  CustomClasses
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction: NSObject {
    int numerator;
    int denominator;
}

-(NSString *) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(void) setNumerator: (int) n andDenominator: (int) d; // multiple parameters
-(Fraction *) initWithNumerator: (int) n denominator: (int) d; // constructor

@end
