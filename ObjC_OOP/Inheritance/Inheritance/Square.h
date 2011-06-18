//
//  Square.h
//  Inheritance
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface Square: Rectangle

-(id) initWithSize: (int) s;
-(void) setSize: (int) s;
-(int) size;

@end
