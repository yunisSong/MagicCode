//
//  ViewController.m
//  MagicCode
//
//  Created by Yunis on 17/5/3.
//  Copyright © 2017年 Yunis. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+SYHelp.h"
#import <Masonry.h>
#import "SYTableViewHelper.h"
#import "DemoTableViewCell.h"
static NSString * const PhotoCellIdentifier = @"PhotoCell";
#import "TableViewDemoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *test = ({
        UITableView *baseTableView    = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        baseTableView.estimatedRowHeight = 100;
        baseTableView.rowHeight = UITableViewAutomaticDimension;
        [baseTableView registerClass:[DemoTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
        baseTableView;
    });
    
    NSArray *source = @[@{@"title":@"DemoTableView",@"Class":@"TableViewDemoViewController"},
                        @{@"title":@"DemoTableView",@"Class":@"TableViewDemoViewController"}
                        ];
    
    TableViewCellConfigureBlock configureCell = ^(DemoTableViewCell *cell, NSDictionary *dic) {
        cell.textLabel.text = dic[@"title"];
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.lineBreakMode = NSLineBreakByCharWrapping;
        
    };
    
    didSelectCellBlock selectBack = ^(NSIndexPath *index)
    {
        NSDictionary *d = source[index.row];
        NSString *c = d[@"Class"];
        Class t = NSClassFromString(c);
        [self showSelectNavCtrWithClass:t];
        NSLog(@"indexRow = %ld",(long)index.row);
    };
    
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
    
    //隐藏多余的cell
    test.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

- (void)showSelectNavCtrWithClass:(Class )class
{
    UIViewController *ctr = [class new];
    [self.navigationController pushViewController:ctr animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
