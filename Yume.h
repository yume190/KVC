//
//  Yume.h
//  KVCTest
//
//  Created by Yume on 2014/7/26.
//  Copyright (c) 2014年 Yume. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Yume : NSObject

@property (nonatomic, strong, getter=fromYume,setter=setToYume:) NSString *yume;
-(NSString *)fromYume;
-(void)setToYume:(NSString *)value;

-(NSString *)yume1;

@end
