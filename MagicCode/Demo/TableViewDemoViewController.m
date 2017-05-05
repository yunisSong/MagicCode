//
//  TableViewDemoViewController.m
//  MagicCode
//
//  Created by Yunis on 17/5/5.
//  Copyright © 2017年 Yunis. All rights reserved.
//

#import "TableViewDemoViewController.h"
#import "UITableView+SYHelp.h"
#import <Masonry.h>
#import "SYTableViewHelper.h"
#import "DemoTableViewCell.h"
@interface TableViewDemoViewController ()

@end
static NSString * const PhotoCellIdentifier = @"PhotoCell";

@implementation TableViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *test = ({
        UITableView *baseTableView    = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        baseTableView.estimatedRowHeight = 100;
        baseTableView.rowHeight = UITableViewAutomaticDimension;
        [baseTableView registerClass:[DemoTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
        baseTableView;
    });
    NSArray *source = @[@"君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝             如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。",@"卢家少妇郁金堂，海燕双栖玳瑁梁。九月寒砧催木叶，十年征戍忆辽阳。白狼河北音书断，丹凤城南秋夜长。谁谓含愁独不见，更教明月照流黄!",@"3",@"11",@"11",@"11",@"11",];
    TableViewCellConfigureBlock configureCell = ^(DemoTableViewCell *cell, NSString *photo) {
        cell.textLabel.text = photo;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.lineBreakMode = NSLineBreakByCharWrapping;
        
    };
    didSelectCellBlock selectBack = ^(NSIndexPath *index)
    {
        NSLog(@"indexRow = %ld",(long)index.row);
    };
    [test addHelper:^(SYTableViewHelper *help)
     {
         help.addItem(source)
         .configureCell(configureCell)
         .addSelectCell(selectBack)
         .addCellIdentifier(PhotoCellIdentifier);
         
     }];
    
    [test addHelper:^(SYTableViewHelper *help)
     {
         help.addItem(source)
         .configureCell(configureCell)
         .addSelectCell(selectBack)
         .addCellIdentifier(PhotoCellIdentifier);
         
     }];
    [self.view addSubview:test];
    
    [test mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        test.help.addItem(@[]).addEmptyTitle(@"数据是空的~");
        [test reloadData];
    });
    
    //隐藏多余的cell
    test.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
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
