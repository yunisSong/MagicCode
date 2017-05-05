# MagicCode


# 让你眼前一亮的代码

本文记录一下，我见到的让我觉得眼前一亮的代码，闭门造车了好久，一直在吃老本，没有提升，突然见到这样的代码，真的觉得受益匪浅，就自己重写并记录下，水平有限，请看到的列位大神不要见笑。
> 所有的代码都已经上传 ，地址为：[MagicCode](https://github.com/yunisSong/MagicCode)

### UITableView 
#### UITableView 代理封装
传统的 `UITableView` 使用，会有一大堆代理方法，看起来比较乱，封装后形式如下：

```
    UITableView *table = ({
        UITableView *baseTableView    = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        baseTableView.estimatedRowHeight = 100;
        baseTableView.rowHeight = UITableViewAutomaticDimension;
        [baseTableView registerClass:[DemoTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
        baseTableView;
    });
    [table addHelper:^(SYTableViewHelper *help)
     {
         help.addItem(source)
         .configureCell(^(DemoTableViewCell *cell, NSString *photo)
                        {
                            cell.textLabel.text = photo;
                        })
         .addSelectCell(^(NSIndexPath *index)
                        {
                            NSLog(@"indexRow = %ld",(long)index.row);
                        })
         .addCellIdentifier(PhotoCellIdentifier);
         
     }];
    [self.view addSubview:table];
    
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
```

具体的就是使用一个帮助类，把 `UITableView` 的代理都丢到帮助类里面处理，因为最近痴迷于链式语法，就使用链式实现了一遍,一般简单的需求都可以用下，如果需要使用其他的代理方法，就自己再添加了。
![](https://raw.githubusercontent.com/yunisSong/MagicCode/master/Pic/tableviewDemo.png)

#### UITableView 一句话空数据占位视图
开发中，如果请求返回数据为空，需要有一视图提示用户，数据为空。这个是之前看陈一龙的微博看到的，自己就又实现了下。具体代码：

```
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.emptyViewTitle)
    {
        [tableView tableViewDisplayEmptyViewWithTitle:self.emptyViewTitle
                               ifNecessaryForRowCount:self.items.count];
    }
    return self.items.count;
}
```

我这边就显示了一个提示的文字，简单的实现了，如果需要显示美观的视图，自己修改下就可以用了，思路都是一样的。

![](https://raw.githubusercontent.com/yunisSong/MagicCode/master/Pic/tableviewEmptyDemo.png)

