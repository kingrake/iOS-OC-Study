//
//  main.m
//  Lesson2-OC-Class
//
//  Created by lo on 2022/3/6.
//

#import <Foundation/Foundation.h>

@interface Person:NSObject
{
    NSString *_name;
    int _age;
    float _height;
}

- (void)run;

@end

@implementation Person

- (void)run
{
    NSLog(@"亮亮在不停的狂奔中……");
}

@end

int main(int argc, const char * argv[]) {
    
    Person *lingLing = [Person new];
    [lingLing run];
    return 0;
}
