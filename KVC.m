//
//  LabColor.m
//  KVCTest
//
//  Created by Yume on 2014/12/28.
//  Copyright (c) 2014年 Yume. All rights reserved.
//

#import "KVC.h"

@interface KVC()
{
    NSArray *red;
}
@end

@implementation KVC

-(instancetype)init{
    self = [super init];
    if (self) {
       red = @[@100,@50,@10];
    }
    return self;
}

//- (NSArray *)aka{
//    return @[@1,@2,@3];
//}

- (NSUInteger)countOfAka{
    return [red count];
}

- (id)objectInAkaAtIndex:(NSUInteger)index{
    return [red objectAtIndex:index];
}

//- (NSArray *)akaAtIndexes:(NSIndexSet *)indexes{
//    return [red objectAtIndex:index];
//}

-(void)getAka:(NSArray * __unsafe_unretained *)buffer range:(NSRange)inRange{
    [red getObjects:buffer range:inRange];
}

@end
