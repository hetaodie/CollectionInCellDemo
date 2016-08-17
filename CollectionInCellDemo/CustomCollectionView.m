//
//  CustomCollectionView.m
//  CollectionInCellDemo
//
//  Created by Weixu on 16/6/4.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "CustomCollectionView.h"

@implementation CustomCollectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    if (!CGSizeEqualToSize(self.bounds.size, [self intrinsicContentSize]))
    {
        [self invalidateIntrinsicContentSize];
    }
}

- (CGSize)intrinsicContentSize
{
    CGSize intrinsicContentSize = self.contentSize;
    intrinsicContentSize.width = self.frame.size.width;
    
    return intrinsicContentSize;
}

@end
