//
//  UnfoldCollectionViewCell.h
//  PRIS_iPhone
//
//  Created by NetEase on 16/9/12.
//
//

#import <UIKit/UIKit.h>

@interface UnfoldCollectionViewCell : UICollectionViewCell


//+ (CGSize)getCellHeightWithData:(OneClassifyCategoryObject *)aObject;

- (void)showCellWithData:(NSString *)aObject;
@end
