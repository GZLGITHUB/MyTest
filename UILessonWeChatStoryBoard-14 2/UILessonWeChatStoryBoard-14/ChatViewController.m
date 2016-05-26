//
//  ChatViewController.m
//  UILessonWeChatStoryBoard-14
//
//  Created by lanouhn on 16/4/22.
//  Copyright © 2016年 biao. All rights reserved.
//

#import "ChatViewController.h"
#import "DetailViewController.h"
#import "ChatCell.h"
@interface ChatViewController ()

@end

@implementation ChatViewController

/*
// 视图将要消失时隐藏标签栏
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    self.tabBarController.tabBar.hidden = YES;

}
*/
// 视图将要出现时显示标签栏
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.tabBarController.tabBar.hidden = NO;

}





- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ppp" forIndexPath:indexPath];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld - %ld",indexPath.section, indexPath.row];
    
    cell.nameLabel.text = [NSString stringWithFormat:@"tom%ld",indexPath.row];
    
    cell.phoneLabel.text = @"110";
    
    cell.pictureView.image = [UIImage imageNamed:@"chengqiang.jpg"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"aaa"]) {
        self.tabBarController.tabBar.hidden = YES;
        // 获取到选中cell的NSIndexPath
       NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        // 根据indexPath获取到cell对象
        ChatCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
        
        // 根据segue获取要跳转过去的视图控制器
        DetailViewController *detailVC = segue.destinationViewController;
        
        detailVC.string = cell.nameLabel.text;
        
    }
    
}


@end
