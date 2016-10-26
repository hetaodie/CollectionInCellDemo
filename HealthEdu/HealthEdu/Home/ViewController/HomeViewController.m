//
//  HomeViewController.m
//  HealthEdu
//
//  Created by NetEase on 16/9/27.
//  Copyright © 2016年 allWants. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeContentTableViewCell.h"
#import "HomeContentHeaderView.h"
#import "HomeTagView.h"

#import "ConsultViewController.h"
#import "BaiKeViewController.h"
#import "LectureHailViewController.h"
#import "LearnCommunityViewController.h"

#define HomeContentCellHeight 168

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource,HomeTagViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *contentTableView;
@property (weak, nonatomic) IBOutlet HomeTagView *homeTagView;

@end

@implementation HomeViewController

#pragma mark -
#pragma mark lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpContentTableView];
    
    self.homeTagView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark -
#pragma mark IBActions

#pragma mark -
#pragma mark public

#pragma mark -
#pragma mark delegate

#pragma mark -
#pragma mark HomeTagViewDelegate

- (void)onSelectBtnWithTag:(HomeTagsName)aTag{
    switch (aTag) {
        case HomeTagsNameOfConsult:
        {
            ConsultViewController *ndVC = [[ConsultViewController alloc] initWithNibName:@"ConsultViewController" bundle:nil];
            ndVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ndVC animated:YES];
            break;
        }
        case HomeTagsNameOfBaiKe:
        {
            BaiKeViewController *ndVC = [[BaiKeViewController alloc] initWithNibName:@"BaiKeViewController" bundle:nil];
            ndVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ndVC animated:YES];
            break;
        }
        case HomeTagsNameOfLectureHail:
        {
            LectureHailViewController *ndVC = [[LectureHailViewController alloc] initWithNibName:@"LectureHailViewController" bundle:nil];
            ndVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ndVC animated:YES];
            break;
        }
        case HomeTagsNameOfLearnCommuity:
        {
            LearnCommunityViewController *ndVC = [[LearnCommunityViewController alloc] initWithNibName:@"LearnCommunityViewController" bundle:nil];
            ndVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ndVC animated:YES];
            break;
        }
            
        default:
            break;
    }
}

#pragma mark -
#pragma mark UITableViewDelegate & UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeContentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeContentTableViewCell" forIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return HomeContentCellHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark -
#pragma mark NSNotification

#pragma mark -
#pragma mark private

- (void)setUpContentTableView{
    UINib *nib = [UINib nibWithNibName:@"HomeContentTableViewCell" bundle:nil];
    [self.contentTableView registerNib:nib forCellReuseIdentifier:@"HomeContentTableViewCell"];
    
    HomeContentHeaderView *view = [HomeContentHeaderView viewWithXib];
    self.contentTableView.tableHeaderView = view;
}
@end
