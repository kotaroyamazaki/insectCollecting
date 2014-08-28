//
//  ResultViewController.m
//  insectCollecting
//
//  Created by Kotaro on 2014/07/10.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import "ResultViewController2.h"

@interface ResultViewController2 ()

@end

@implementation ResultViewController2


{
    //各種ラベル
    IBOutlet UILabel *percentageLabel2;
    IBOutlet UILabel *levelLabel2;
    
    //捕獲の画像を扱うImage View
    IBOutlet UIImageView *levelImage2;
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    
    int random = arc4random()%3;
    
    //正答率に応じて「一般常識レベル」の位と画像を設定
    if (_correctPercentage2 < 70) {
        levelLabel2.text = @"残念　逃げられちゃった";
        levelImage2.image = [UIImage imageNamed:@"mushikago.gif"];
        
        
    } else if (_correctPercentage2 >= 70 && _correctPercentage2 <= 100) {
        
        //等確率でゲットできる虫が変化
        if(random == 0){
            levelLabel2.text = @"タガメゲット";
            levelImage2.image = [UIImage imageNamed:@"tagame.tif"];
            [ud setObject:@"YES"
                   forKey:@"GET4"];
            [ud synchronize];
            
        }else if (random == 1){
            levelLabel2.text = @"ゲンゴロウゲット！";
            levelImage2.image = [UIImage imageNamed:@"gengorou.tif"];
            [ud setObject:@"YES"
                   forKey:@"GET5"];
            [ud synchronize];
            
            
        }else if (random == 2){
            levelLabel2.text = @"ヤゴゲット！";
            levelImage2.image = [UIImage imageNamed:@"yago.tif"];
            [ud setObject:@"YES"
                   forKey:@"GET6"];
            [ud synchronize];
            
        }
        
    }
    
    //実際の正答率を表示
    percentageLabel2.text = [NSString stringWithFormat:@"%d %%", _correctPercentage2];
    
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
