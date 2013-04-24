//
//  ViewController.m
//  ViewWithTagSample
//
//  Created by 廣川政樹 on 2013/04/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self setLabel];
  [self setButton];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//ラベル作成
- (void)setLabel
{
  NSInteger labelWidth = 100;
  NSInteger labelHeight = 32;
  NSInteger labelX = (self.view.frame.size.width / 2) - (labelWidth / 2);
  NSInteger labelY = (self.view.frame.size.height / 2) - (labelHeight / 2);
  UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelX,
                                                               labelY,
                                                               labelWidth,
                                                               labelHeight)];
  myLabel.text = @"Sample";
  myLabel.textAlignment = NSTextAlignmentCenter;
  //tagを指定して画面に追加
  myLabel.tag = 1;
  [self.view addSubview:myLabel];
}

//削除ボタン作成
- (void)setButton
{
  UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  myButton.center = CGPointMake(18, 18);
  [myButton setTitle:@"Remove" forState:UIControlStateNormal];
  [myButton addTarget:self
               action:@selector(buttonTapEvent:)
     forControlEvents:UIControlEventTouchUpInside];
  [myButton sizeToFit];
  [self.view addSubview:myButton];
}

//削除ボタンのタップイベント
- (void)buttonTapEvent:(id)sender
{
  [self removeLabel];
}

//ラベルの削除
- (void)removeLabel
{
  //タグを指定して画面から削除
  [[self.view viewWithTag:1] removeFromSuperview];
}

@end
