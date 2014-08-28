//
//  Problem.h
//  insectCollecting
//
//  Created by Kotaro on 2014/07/10.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Problem : NSObject

+ (id)initProblem;
- (void)setQ:(NSString *)q withA:(int)a;
- (NSString *)getQ;
- (int)getA;

@end
