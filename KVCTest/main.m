//
//  main.m
//  KVCTest
//
//  Created by Yume on 2014/7/26.
//  Copyright (c) 2014年 Yume. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Yume.h"
#import "Dream.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Yume *yume = [Yume new];
//        NSLog(@"%@",[yume valueForKey:@"yume"]);
//        NSLog(@"%@",[yume valueForKey:@"yume1"]);
//        NSLog(@"%@",[yume valueForKey:@"yume2"]);
//        NSLog(@"%@",[yume valueForKey:@"yume3"]);
//        NSLog(@"%@",[yume valueForKey:@"yume4"]);
        
//        Dream *dream = [Dream new];
//        NSLog(@"%@",[dream valueForKey:@"dream"]);
//
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKey:@"uppercaseString"]);
//
//        NSLog(@"%@",[@{@"a":@"aa",@"b":@"bb"} valueForKeyPath:@"b.uppercaseString"]);
//
//        NSLog(@"%@",[@[@1,@2,@3] valueForKey:@"@count"]);
//        NSLog(@"%@",[@[@1,@2,@100] valueForKeyPath:@"@max.self"]);
//
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@test.xxx.asd"]);
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@test.xxx"]);
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@test.xxx"]);
//
        NSLog(@"%@",[@[@1,@2,@3] valueForKeyPath:@"@test"]);
        NSLog(@"%@",[@[@1,@2,@3] valueForKeyPath:@"@times.1000"]);
        NSLog(@"%@",[@[@1,@2,@3] valueForKeyPath:@"@times.2500"]);
//
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@append.xxx"]);
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@append.abc"]);
//        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@append.xxx"]);

    }
    return 0;
}







































@implementation NSArray (Yume)

- (id) _timesForKeyPath:(NSString *)keyPath{
    NSMutableArray * values = [NSMutableArray new];
    for (id obj in self) {
        @try {
            [values addObject:@([obj floatValue] * [keyPath floatValue])];
        }
        @catch (id) {}
    }
    return [NSArray arrayWithArray:values];
}

- (id) _appendForKeyPath:(NSString *)keyPath{
    NSMutableArray * values = [NSMutableArray new];
    for (id obj in self) {
        @try {
            [values addObject:[NSString stringWithFormat:@"%@%@",obj,keyPath]];
        }
        @catch (id) {}
    }
    return [NSArray arrayWithArray:values];
}

- (id) _testForKeyPath:(NSString *)keyPath{
    for (id obj in self) {
        @try {
            NSLog(@"Content : %@ and Key Path : %@",obj,keyPath);
        }
        @catch (id) {}
    }
    return nil;
}


//- (id) _distinctUnionOfPresentObjectsForKeyPath:(NSString*)keyPath
//{
//    NSMutableArray * values = [NSMutableArray new];
//    for (id obj in self) {
//        @try {
//            id value = [obj valueForKeyPath:keyPath];
//            if(value && value!=[NSNull null] &&
//               ![values containsObject:value])
//            {
//                [values addObject:value];
//            }
//        }
//        @catch (id) {}
//    }
//    return [NSArray arrayWithArray:values];
//}

-(NSString *)test{
    return @"test123";
}

@end