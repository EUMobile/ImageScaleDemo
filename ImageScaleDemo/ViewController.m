//
//  ViewController.m
//  ImageScaleDemo
//
//  Created by csj on 13-8-2.
//  Copyright (c) 2013年 eu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _imageScale.image = [self imageNamed:@"aaab.png" leftCapWidth:40 topCapHeight:40];
    _imageScale1.image = [self resizeImage:@"aaab.png" withCapInsets:UIEdgeInsetsMake(40, 40, 40, 40)];
    
    _imageScale2.image = [self resizeImageModeStretch:@"aaab.png" withCapInsets:UIEdgeInsetsMake(40, 40, 40, 40)] ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//返回指定圆角弧度 的拉伸图片
- (UIImage*)imageNamed:(NSString*)imageName leftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight {
    UIImage* retImage = [UIImage imageNamed:imageName];
    
    return [retImage stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight];
}

- (UIImage*)resizeImage:(NSString*)imageName withCapInsets:(UIEdgeInsets)capInsets {
    UIImage* retImage = [UIImage imageNamed:imageName];
    
    return [retImage resizableImageWithCapInsets:capInsets];
}

- (UIImage*)resizeImageModeStretch:(NSString*)imageName withCapInsets:(UIEdgeInsets)capInsets {
    UIImage* retImage = [UIImage imageNamed:imageName];
    
    return [retImage resizableImageWithCapInsets:capInsets resizingMode:UIImageResizingModeStretch];
}
@end
