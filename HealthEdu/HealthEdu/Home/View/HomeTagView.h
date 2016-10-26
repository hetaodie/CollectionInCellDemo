//
//  HomeTagView.h
//  HealthEdu
//
//  Created by xu.wei on 16/10/17.
//  Copyright © 2016年 allWants. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HomeTagsName) {
    HomeTagsNameOfConsult = 0,
    HomeTagsNameOfBaiKe,
    HomeTagsNameOfLectureHail,
    HomeTagsNameOfLearnCommuity,
};

@protocol HomeTagViewDelegate <NSObject>

- (void)onSelectBtnWithTag:(HomeTagsName)aTag;

@end

@interface HomeTagView : UIView
@property (nonatomic,assign) id<HomeTagViewDelegate>delegate;

@end
