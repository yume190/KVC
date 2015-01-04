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
#import "Validation.h"
#import "KVC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // ---------- Yume Start ----------
        Yume *yume = [Yume new];
        NSLog(@"%@",[yume valueForKey:@"yume1"]);
        NSLog(@"%@",[yume valueForKey:@"yume2"]);
        NSLog(@"%@",[yume valueForKey:@"yume3"]);
        NSLog(@"%@",[yume valueForKey:@"yume4"]);

        // ---------- Dream Start ----------
        Dream *dream = [Dream new];
        NSLog(@"%@",[dream valueForKey:@"dream"]);
        
        // Questions : http://yume190.github.io/2014/07/10/2014-07-10-ios-kvc-wen-ti-ji/
        
        // Question 1 : If we assign property getter & setter, then synthesize it to another ivar. How KVC working?
        // @property (nonatomic, strong, getter=fromYume,setter=setToYume:) NSString *yume;
        // @synthesize yume = iYume;
        // iYume = @"iYume";
        
        NSLog(@"%@",yume.yume);                         // iYume
        NSLog(@"%@",[yume valueForKey:@"yume"]);        // null
//        [yume setValue:@"My Yume" forKey:@"yume"];    // UndefinedKey KVC Exception
        
        [yume setValue:@"My Yume" forKey:@"toYume"];
        NSLog(@"%@",yume.yume);                         // My Yume
        NSLog(@"%@",[yume valueForKey:@"fromYume"]);    // My Yume
        
        [yume setValue:@"My Yume2" forKey:@"iYume"];
        NSLog(@"%@",yume.yume);                         // My Yume2
        NSLog(@"%@",[yume valueForKey:@"iYume"]);       // My Yume2

        // Questions 2-1 : get upper case string from @[@"a",@"b",@"c"]
        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKey:@"uppercaseString"]);
        
        // Questions 2-2 : get upper case string from @{@"a":@"aa",@"b":@"bb"} (b's value)
        NSLog(@"%@",[@{@"a":@"aa",@"b":@"bb"} valueForKeyPath:@"b.uppercaseString"]);
        
        // Questions 3-1 : get length from @[@1,@2,@3]
        NSLog(@"%@",[@[@1,@2,@3] valueForKey:@"@count"]);
        
        // Questions 3-2 : get max, min, average, sum from @[@1,@2,@100]
        NSLog(@"%@",[@[@1,@2,@100] valueForKeyPath:@"@max.self"]);
        NSLog(@"%@",[@[@1,@2,@100] valueForKeyPath:@"@min.self"]);
        NSLog(@"%@",[@[@1,@2,@100] valueForKeyPath:@"@avg.self"]);
        NSLog(@"%@",[@[@1,@2,@100] valueForKeyPath:@"@sum.self"]);
        
        // Questions Final
        // 1. @[@"1",@"2",@"3"] append "abc" to all String
        // 2. @[@1,@2,@3] * 10 to all numbers
        // 3. @[@"1",@"2",@"3"] append any string(argument) to all String
        // 4. @[@1,@2,@3] * any number(argument) to all numbers
        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@append.abc"]);
        NSLog(@"%@",[@[@"a",@"b",@"c"] valueForKeyPath:@"@append.xxx"]);

        Validation *validation = [Validation new];
        NSError *error;
        NSString *secret = @"My Secret";
        [validation validateValue:&secret forKey:@"secret" error:&error];
        
        KVC *l = [KVC new];
        NSArray *a = [l valueForKeyPath:@"aka"];
        NSNumber *n = a[1];
        NSLog(@"%d",n.intValue);

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