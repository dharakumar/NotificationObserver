//
//  TestViewController.m
//  NotificationObserver
//
//  Created by Admin on 12/21/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end


@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Testview loaded");
   
    
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"view did  appeared");
}
-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:YES];
    NSLog(@"view will appeared");
}
-(void)viewDidDisAppear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"view did disappeared");
}

-(void)viewWillDisAppear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"view will disappeared");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// the function specified in the same class where we defined the addObserver
- (void)showMainMenu1:(NSNotification *)note {
    NSLog(@"Received Notification - Someone seems to have logged in TEst");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)touchButton:(id)sender {
    NSLog(@"touchButton");
   // NSDictionary *dict = [[NSDictionary alloc]init];
   NSDictionary *dict = [NSDictionary dictionaryWithObject:self.text1.text
                                forKey:@"Info"];

  [[NSNotificationCenter defaultCenter] postNotificationName:@"loginComplete" object:self userInfo:dict] ;
}
@end
