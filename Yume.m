//
//  Yume.m
//  KVCTest
//
//  Created by Yume on 2014/7/26.
//  Copyright (c) 2014年 Yume. All rights reserved.
//

#import "Yume.h"

@interface Yume ()
{
    NSString *yume3;
}
@end

@implementation Yume

-(instancetype)init{
    self = [super init];
    if (self) {
        _yume = @"dream";
        yume3 = @"dream3";
        
    }
    return self;
}

-(NSString *)yume1{
    return @"dream1";
}

-(NSString *)yume2{
    return @"dream2";
}

-(id)valueForUndefinedKey:(NSString *)key{
    if ([key isEqualTo:@"yume4"]) {
        return @"dream4";
    }
    return nil;
}

@end