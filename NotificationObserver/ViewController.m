//
//  ViewController.m
//  NotificationObserver
//
//  Created by Admin on 12/21/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewcontroller loaded");
    sleep(2);
    /// Add an observer that will respond to loginComplete
    [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(showMainMenu:)
                                              name:@"loginComplete"
                                             object:nil];
       }

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
      sleep(2);
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



// the function specified in the same class where we defined the addObserver
- (void)showMainMenu:(NSNotification *)note {
    NSLog(@"Received Notification - Someone seems to have logged in 1");
    NSDictionary *dict = [note userInfo];
    NSLog(@"DICTionary %@",dict);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)notifyButton:(id)sender {
    

    NSString *str = @"hai";
  }
@end
