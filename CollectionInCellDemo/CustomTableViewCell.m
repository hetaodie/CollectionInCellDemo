//
//  CustomTableViewCell.m
//  CollectionInCellDemo
//
//  Created by Weixu on 16/6/3.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "CustomCollectionViewCell.h"

#import "UnfoldCollectionViewCell.h"

@interface CustomTableViewCell()

@property (nonatomic, assign) NSInteger cellNum;
@property (nonatomic, strong) NSMutableArray *contentArray;


@end


@implementation CustomTableViewCell
- (void)itemOfShowNumber:(int)aNum{
    self.cellNum = aNum;
    [self.collectionView reloadData];
    [self layoutIfNeeded];

}

- (void)prepareForReuse{
 
}
- (void)awakeFromNib {
    self.cellNum = 0;
    
      [self.collectionView registerNib:[UINib nibWithNibName:@"UnfoldCollectionViewCell" bundle:nil]  forCellWithReuseIdentifier:@"UnfoldCollectionViewCell"];
    
    NSArray *array = [NSArray arrayWithObjects:@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部",@"全部", nil];
    
    [self.contentArray setArray:array];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGSize size = [UIScreen mainScreen].bounds.size;
    size.width = (size.width-45)/6;
    size.height = 60;
    CGSize cellSize = size;
    return cellSize;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (self.cellNum == 0) {
        return 0;
    }
    return  self.cellNum;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCollectionViewCell" forIndexPath:indexPath];
//    int  itemIndex = indexPath.row % 6;
//    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",itemIndex]];
//    cell.imageView.image = image;
//    cell.label.text = @"ceshi";
    
    UnfoldCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UnfoldCollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row >= [self.contentArray count]) {
        [cell showCellWithData:@"不住地的玩"];
    }
    
    else{
    [cell showCellWithData:[self.contentArray objectAtIndex:indexPath.row]];
    }
    return cell;
}
@end
