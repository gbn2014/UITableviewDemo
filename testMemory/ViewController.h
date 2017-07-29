//
//  ViewController.h
//  testMemory
//
//  Created by gbn on 2017/7/26.
//  Copyright © 2017年 gbn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(weak, nonatomic) IBOutlet UIButton* btn;

@end

