//
//  ChatCell.m
//  UILessonWeChatStoryBoard-14
//
//  Created by lanouhn on 16/4/22.
//  Copyright © 2016年 biao. All rights reserved.
//

#import "ChatCell.h"

@implementation ChatCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_pictureView release];
    [_nameLabel release];
    [_phoneLabel release];
    [super dealloc];
}
@end
