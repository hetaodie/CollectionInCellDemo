//
//  ViewController.m
//  CollectionInCellDemo
//
//  Created by Weixu on 16/6/3.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) UITableViewCell *prototypeCell;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil]  forCellReuseIdentifier:@"CustomTableViewCell"];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.estimatedRowHeight = 44.0 ;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.prototypeCell  = [self.tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    CustomTableViewCell *cell = (CustomTableViewCell *)self.prototypeCell;
//
//    CGFloat defaultHeight = cell.contentView.frame.size.height;
//    CGFloat height = defaultHeight;
//    return 1  + height;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

//-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 44;
//}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView  dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    [cell itemOfShowNumber:indexPath.row+2];
  
    return cell;
}


@end
