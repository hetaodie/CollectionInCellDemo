//
//  HomeTagView.m
//  HealthEdu
//
//  Created by xu.wei on 16/10/17.
//  Copyright © 2016年 allWants. All rights reserved.
//

#import "HomeTagView.h"

@interface HomeTagView ()
@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation HomeTagView

#pragma mark -
#pragma mark lifecycle

- (void)layoutSubviews{
    [super layoutSubviews];
    self.contentView.frame = self.bounds;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSString *className = NSStringFromClass([self class]);
        self.contentView = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        [self addSubview:self.contentView];
        return self;
    }
    return nil;
}


#pragma mark -
#pragma mark IBActions

- (IBAction)homeTagButtonPress:(UIButton *)sender {
    HomeTagsName tagsName = sender.tag;
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(onSelectBtnWithTag:)]) {
        [self.delegate onSelectBtnWithTag:tagsName];
    }
}
#pragma mark -
#pragma mark public

#pragma mark -
#pragma mark delegate

#pragma mark -
#pragma mark NSNotification

#pragma mark -
#pragma mark private

@end
