//
//  GaobnTestTableViewCell.h
//  testMemory
//
//  Created by gbn on 2017/7/28.
//  Copyright © 2017年 gbn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GaobnTestTableViewCell : UITableViewCell
@property(weak, nonatomic) IBOutlet UILabel* messageLabel;
@property(weak, nonatomic) IBOutlet UILabel* nameLabel;
-(void)setMessage:(NSString*)message;
-(void)setName:(NSString*)name;
-(void)setCellInfo:(NSString*)name :(NSString*)message;
@end
