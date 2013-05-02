//
//  Player.h
//  CustomInitializer
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject {
@private
    int score;
}

- (id)initWithScore:(int)s;
- (int)getScore;

@end
