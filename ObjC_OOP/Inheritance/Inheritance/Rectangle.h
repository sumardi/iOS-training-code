//
//  Rectangle.h
//  Inheritance
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject {
@protected
    int width;
    int height;
}

-(id) initWithWidth: (int) w height: (int) h;
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(void) setWidth: (int) w height: (int) h;
-(int) width;
-(int) height;
-(void) print;

@end
