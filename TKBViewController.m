//
//  TKBViewController.m
//  insectCollecting
//
//  Created by Kotaro on 2014/07/09.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import "TKBViewController.h"


@interface TKBViewController ()


@end

@implementation TKBViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"mainback.jpg"]drawInRect:self.view.bounds];
    UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    //背景変更
    
    // NSUserDefaultsの取得
  //  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    //-(NSArray*)arrayForKey:(NSString*)defaultName

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)quizDone
{
    // More later
}

@end
