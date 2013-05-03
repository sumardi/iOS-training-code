//
//  MyNewClass.h
//  ObjCBlocks
//
//  Created by Sumardi Shukor on 5/3/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>

// Define a new block type
typedef NSInteger (^PBlock) (NSInteger);

@interface MyNewClass : NSObject

+ (PBlock)blockRaisedToPower:(NSInteger)y;

@end
