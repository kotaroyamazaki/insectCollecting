//
//  AdventureViewController.m
//  insectCollecting
//
//  Created by Kotaro on 2014/07/11.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import "AdventureViewController.h"
#import "kawaViewController.h"

@interface AdventureViewController ()
- (IBAction)goButton:(id)sender;
- (IBAction)goButton2:(id)sender;

@end

@implementation AdventureViewController
{
    IBOutlet UIImageView *secondStage;
    IBOutlet UIImageView *goButton2image;
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
    
//    // NSUserDefaultsからデータを読み込む
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    
    //キーの値を取得
    NSString *get1 = [ud objectForKey:@"GET1"];
    NSString *get2 = [ud objectForKey:@"GET2"];
    NSString *get3 = [ud objectForKey:@"GET3"];
    
    
    if ([get1 isEqualToString:@"YES"]&&
        [get2 isEqualToString:@"YES"]&&
        [get3 isEqualToString:@"YES"]) {
        secondStage.image = [UIImage imageNamed:@"kawa_ok.gif"];
        goButton2image.image = [UIImage imageNamed:@"gokawa_ok.jpg"];

    }
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

- (IBAction)goButton:(id)sender {
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@""
                                                      message:@"７割以上正解で昆虫ゲット！"
                                                     delegate:self
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles: nil];
        [alert show];
    }

- (IBAction)goButton2:(id)sender {

    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    
    //キーの値を取得
    NSString *get1 = [ud objectForKey:@"GET1"];
    NSString *get2 = [ud objectForKey:@"GET2"];
    NSString *get3 = [ud objectForKey:@"GET3"];
    
    if ([get1 isEqualToString:@"YES"]&&
        [get2 isEqualToString:@"YES"]&&
        [get3 isEqualToString:@"YES"]) {
        UIAlertView *alert2 =[[UIAlertView alloc]initWithTitle:@""
                                                      message:@"７割以上正解で昆虫ゲット！"
                                                     delegate:self
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles: nil];
        [alert2 show];
        
//         [self performSegueWithIdentifier:@"toKawa" sender:self];
//        //Storyboardを特定して
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"main" bundle:nil];
//        
//        //そのStoryboardにある遷移先のViewConrollerを用意して
//        UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"nextView"];
//        
//        //呼び出し！
//        [self presentViewController:vc animated:YES completion:nil];
        
        kawaViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"nextView"];
        [self presentModalViewController:controller animated:YES]; //モーダルで呼び出す
        
        
    }else{
        UIAlertView *alert3 =[[UIAlertView alloc]initWithTitle:@""
                                                      message:@"森で全種類の虫を捕まえるとあそべるよ！"
                                                     delegate:self
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles: nil];
        [alert3 show];
        
    }

    
}


    

@end
