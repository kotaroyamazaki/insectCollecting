//
//  TKBeetle.m
//  insectCollecting
//
//  Created by Kotaro on 2014/07/09.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import "TKBeetle.h"

@implementation TKBeetle

- (id)initWithQuiz:(NSString*)plistName
{
    if ((self = [super init]))
    {
        NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        self.movieArray = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
    }
    return self;
}

@end
