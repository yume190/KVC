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
    NSString *iYume;
//    NSString *yume;
}
@end

@implementation Yume

@synthesize yume = iYume;

//+(BOOL)accessInstanceVariablesDirectly{
//    return NO;
//}

-(instancetype)init{
    self = [super init];
    if (self) {
        iYume = @"iYume";
        yume3 = @"dream3";
//        yume = @"who";
    }
    return self;
}

-(NSString *)fromYume{
    return iYume;
}

-(void)setToYume:(NSString *)value{
    iYume = value;
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
    return [super valueForUndefinedKey:key];
}

@end