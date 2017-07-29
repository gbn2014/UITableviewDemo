//
//  GaobnTestTableViewCell.m
//  testMemory
//
//  Created by gbn on 2017/7/28.
//  Copyright © 2017年 gbn. All rights reserved.
//

#import "GaobnTestTableViewCell.h"

@implementation GaobnTestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setName:(NSString *)name
{
    _nameLabel.text = name;
}

-(void)setMessage:(NSString *)message
{
    _messageLabel.text = message;
}

-(void)setCellInfo:(NSString *)name :(NSString *)message
{
    _nameLabel.text = name;
    _messageLabel.text = message;
}

@end
