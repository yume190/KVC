//
//  Validation.m
//  KVCTest
//
//  Created by Yume on 2015/1/3.
//  Copyright (c) 2015年 Yume. All rights reserved.
//

#import "Validation.h"

@implementation Validation

//-(BOOL)validateValue:(inout __autoreleasing id *)ioValue forKey:(NSString *)inKey error:(out NSError *__autoreleasing *)outError{
//    NSString *value = *ioValue;
//    return NO;
//}

-(BOOL)validateSecret:(inout __autoreleasing id *)ioValue error:(out NSError *__autoreleasing *)outError{
    NSString *value = *ioValue;
    return NO;
}

@end
