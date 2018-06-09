//
//  ViewController.m
//  RCDispatchQueue
//
//  Created by 孙承秀 on 2018/6/9.
//  Copyright © 2018年 RongCloud. All rights reserved.
//

#import "ViewController.h"
#import <RCDispatchQueueLib/RCDispatchQueueLib.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"hello");
    [RCDispatchQueue dispatch_Queue_Block_After:^{
        NSLog(@"111");
    } delay:1];
    [RCDispatchQueue dispatch_Queue_Block_After:^{
        NSLog(@"222");
    } delay:2];

    [RCDispatchQueue dispatch_Queue_Block_After:^{
        NSLog(@"333");
    } QOS:RCQualityOfServiceUserInteractive delay:3];

    for (NSInteger i = 0 ; i < 100; i ++) {
        [RCDispatchQueue dispatch_Queue_Block:^{
            
        } QOS:RCQualityOfServiceBackground];
    }
    
    for (NSInteger i = 0 ; i < 100; i ++) {
        
        [RCDispatchQueue dispatch_Queue_Block:^{
           
        } QOS:RCQualityOfServiceUserInteractive];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
