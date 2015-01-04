//
//  Dream.m
//  KVCTest
//
//  Created by Yume on 2014/7/26.
//  Copyright (c) 2014年 Yume. All rights reserved.
//

#import "Dream.h"

@interface Dream()
{
    NSString *_dream;
    NSString *_isDream;
    NSString *dream;
    NSString *isDream;
}
@end

@implementation Dream

-(instancetype)init{
    self = [super init];
    if (self) {
        _dream = @"6. ivar _dream";
        _isDream = @"7. ivar _isDream";
        dream = @"8. ivar dream";
        isDream = @"9. ivar isDream";
    }
    return self;
}

-(NSString *)getDream{
    return @"1. getDream";
}

-(NSString *)dream{
    return @"2. dream";
}

-(NSString *)isDream{
    return @"3. isDream";
}

-(NSString *)_getDream{
    return @"4. _getDream";
}

-(NSString *)_dream{
    return @"5. _dream";
}

-(NSString *)_isDream{
    return @"No Use";
}

-(NSString *)getPrimitiveDream{
    return @"10. getPrimitiveDream";
}

-(NSString *)primitiveDream{
    return @"11. primitiveDream";
}

-(id)valueForUndefinedKey:(NSString *)key{
    if ([key isEqualTo:@"dream"]) {
        return @"12. valueForUndefinedKey";
    }
    return nil;
}

@end