//
//  UnfoldCollectionViewCell.m
//  PRIS_iPhone
//
//  Created by NetEase on 16/9/12.
//
//

#import "UnfoldCollectionViewCell.h"


#define UnfoldCollectionViewCellHeight 36
#define UnfoldCollectionViewCellVCap 12

@interface UnfoldCollectionViewCell()
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation UnfoldCollectionViewCell

- (void)layoutSubviews{
    [super layoutSubviews];
}

- (void)awakeFromNib{
    [super awakeFromNib];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        return self;
    }
    return nil;
}


#pragma mark -
#pragma mark delegate

#pragma mark -
#pragma mark Notification Function

#pragma mark -
#pragma mark public Function


//+ (CGSize)getCellHeightWithData:(OneClassifyCategoryObject *)aObject{
//    UIFont *font = [UIFont fontWithName:[[NRFontManager sharedManager]  currentFontDesc] size:14.f];
//    NSDictionary *dict = @{NSFontAttributeName:font};
//    
//    CGRect rect = [aObject.name boundingRectWithSize:CGSizeMake(MAXFLOAT, UnfoldCollectionViewCellHeight) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
//    
//    CGFloat width = rect.size.width;
//    CGSize size = CGSizeMake(width, rect.size.height + UnfoldCollectionViewCellVCap);
//    
//    return size;
//}

- (void)showCellWithData:(NSString *)aObject{
    self.titleLabel.text = aObject;
}

#pragma mark -
#pragma mark btn Function

#pragma mark -
#pragma mark private Function

@end
