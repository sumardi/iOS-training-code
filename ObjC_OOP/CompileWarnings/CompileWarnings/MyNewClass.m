#import "MyNewClass.h"


@implementation MyNewClass

-(NSString *)groovyMethod {
    // uncomment these four lines to create a "control reaches end of non-void function" warning
//    int a = 5;
//    int b =  6;
//    int c = a + b;
//    if (c > 10 )
        // careful! might end up not returning anything
    return @"The result is....";
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
