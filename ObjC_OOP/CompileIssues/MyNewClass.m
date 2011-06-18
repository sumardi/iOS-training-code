#import "MyNewClass.h"


@implementation MyNewClass

-(NSString *)groovyMethod {
    int a = 5;
    int b =  6;
    int c = a + b;
    if (c > 10 ) {
    return @"The result is....";
    } else {
        return @"Something";
    }
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
