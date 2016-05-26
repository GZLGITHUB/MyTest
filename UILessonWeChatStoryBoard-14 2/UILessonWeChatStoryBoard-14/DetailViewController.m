//
//  DetailViewController.m
//  UILessonWeChatStoryBoard-14
//
//  Created by lanouhn on 16/4/22.
//  Copyright © 2016年 biao. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (retain, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation DetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showLabel.text = self.string;
    // Do any additional setup after loading the view.
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

- (void)dealloc {
    [_showLabel release];
    self.string = nil;
    [super dealloc];
}
@end
