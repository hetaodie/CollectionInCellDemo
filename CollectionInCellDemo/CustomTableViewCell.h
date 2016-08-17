//
//  CustomTableViewCell.h
//  CollectionInCellDemo
//
//  Created by Weixu on 16/6/3.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCollectionView.h"


@interface CustomTableViewCell : UITableViewCell <UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet CustomCollectionView *collectionView;

- (void)itemOfShowNumber:(int)aNum;

@end
