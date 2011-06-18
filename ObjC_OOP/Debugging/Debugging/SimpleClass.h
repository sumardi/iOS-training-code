//
//  SimpleClass.h
//  Debugging
//
//  Created by Simon Allardice on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SimpleClass : NSObject {
@private
    NSString *name;
    int myNumber;
}
@property (retain) NSString *name;
@property int myNumber;

-(void) simpleMethod;

@end
