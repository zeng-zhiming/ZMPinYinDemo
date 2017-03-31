//
//  ZMPinYinViewController.m
//  ZMPinYinDemo
//
//  Created by ZengZhiming on 2017/3/31.
//  Copyright © 2017年 菜鸟基地. All rights reserved.
//

#import "ZMPinYinViewController.h"
#import "NSString+PinYin.h"

@interface ZMPinYinViewController ()

/** 输入框 */
@property (weak, nonatomic) IBOutlet UITextField *textField;
/** 带声调的拼音显示Label */
@property (weak, nonatomic) IBOutlet UILabel *pinyinToneLabel;
/** 不带声调的拼音显示Label */
@property (weak, nonatomic) IBOutlet UILabel *pinyinLabel;
/** 拼音首字母显示Label */
@property (weak, nonatomic) IBOutlet UILabel *firstLetterlLabel;

@end

@implementation ZMPinYinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"中文转拼音";
}

/** 拼音转换按钮点击 */
- (IBAction)onPinYinAction:(UIButton *)sender {
    
    // 显示带声调的拼音
    _pinyinToneLabel.text = [_textField.text transformToPinyinTone];
    // 显示不带声调的拼音
    _pinyinLabel.text = [_textField.text transformToPinyin];
    // 显示拼音首字母
    _firstLetterlLabel.text = [_textField.text transformToFirstLetter];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
