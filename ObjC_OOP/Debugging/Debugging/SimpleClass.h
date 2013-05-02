//
//  SimpleClass.h
//  Debugging
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SimpleClass : NSObject {
@private
    NSString *name;
    int myNumber;
}

@property (strong) NSString *name;
@property int myNumber;

- (void)simpleMethod;

@end
