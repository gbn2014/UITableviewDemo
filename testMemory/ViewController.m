//
//  ViewController.m
//  testMemory
//
//  Created by gbn on 2017/7/26.
//  Copyright © 2017年 gbn. All rights reserved.
//

#import "ViewController.h"
#import "GaobnTestTableViewCell.h"
@interface ViewController()

@end

@implementation ViewController
static UITableView* ChatTable;
NSMutableArray* messageArr;
static NSInteger count=0;
static GaobnTestTableViewCell* prototypeCell;
- (void)viewDidLoad {
    [super viewDidLoad];
    messageArr = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    ChatTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 500, 300) style:UITableViewStyleGrouped] ;
    ChatTable.backgroundColor = UIColor.greenColor;
    ChatTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    ChatTable.scrollEnabled = NO;
    ChatTable.estimatedRowHeight = 56.0f;
    ChatTable.delegate = self;
    ChatTable.dataSource = self;
    ChatTable.transform = CGAffineTransformMakeScale(1, -1);
    [ChatTable registerNib:[UINib nibWithNibName:@"GaobnTestTableViewCell" bundle:[NSBundle mainBundle]]forCellReuseIdentifier:@"First"];
    prototypeCell = [ChatTable dequeueReusableCellWithIdentifier:@"GaobnTestTableViewCell"];
    [self.view addSubview:ChatTable];
}

-(IBAction)BtnPress:(id)sender
{
    if (count >= 5)
    {
        [messageArr removeObjectAtIndex:4];
        NSArray *deleteIndexPaths = [NSArray arrayWithObjects:
                                     [NSIndexPath indexPathForRow:4 inSection:0],
                                     nil];
        [ChatTable beginUpdates];
        [ChatTable deleteRowsAtIndexPaths:deleteIndexPaths withRowAnimation:UITableViewRowAnimationLeft];
        [ChatTable endUpdates];
    }
    NSLog(@"btn press");
    [messageArr addObject:@"hello"];
    [ChatTable beginUpdates];
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [ChatTable insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    [ChatTable endUpdates];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return messageArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil] firstObject];
    GaobnTestTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"First" forIndexPath:indexPath];
    cell.contentView.transform = CGAffineTransformMakeScale(1, -1);
    count++;
    cell.backgroundColor = [UIColor clearColor];
    cell.nameLabel.text = [NSString stringWithFormat:@"name%zd",count];
    if (count%2 == 0)
    {
        cell.messageLabel.text = [NSString stringWithFormat:@"你好吗好的斯捷克洛夫多少发动机索科洛夫的凑字数%zd",count];
    }else{
        cell.messageLabel.text = [NSString stringWithFormat:@"你好吗%zd",count];
    }
    return cell;
}


@end
