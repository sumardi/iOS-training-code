//
//  MyNewClass.h
//  CompileIssues
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "MyNewClass.h"

@implementation MyNewClass

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSString *)groovyMethod
{
    int a = 5;
    int b =  6;
    int c = a + b;
    if (c > 10 ) {
        return @"The result is....";
    } else {
        return @"Something";
    }
}


@end
