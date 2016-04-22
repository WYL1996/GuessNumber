//
//  ViewController.m
//  GuessNumber
//
//  Created by Mac on 15/12/3.
//  Copyright © 2015年 WYL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UITextField *textField;
    
    __weak IBOutlet UILabel *label;
    
    int         answer;//生成的正确答案
    
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    answer=arc4random()%1000;
    
}
#pragma mark-------button的点击事件
- (IBAction)buttonClick:(UIButton *)sender {
    //1.判断是否有文本输入
    if ([textField.text isEqualToString:@""]) {
        label.text=@"sorry输入不能为空";
        return;//跳出方法体
    }
    //输入文本和正确答案比较
    if ([textField.text  intValue]) {
        label.text=@"猜大了🙀";
    }else if([textField.text intValue]){
        label.text=@"猜小了🐷";
    }else{
        label.text=@"猜对了💅 给你一个么么哒";
    }
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
