//
//  LMJWordItem.m
//  GoMeYWLC
//
//  Created by NJHu on 2016/10/21.
//  Copyright © 2016年 NJHu. All rights reserved.
//

#import "LMJWordItem.h"

@implementation LMJWordItem

+ (instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle
{
    LMJWordItem *item = [[self alloc] init];
    item.subTitle = subTitle;
    item.title = title;
    return item;
}

+ (instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle itemOperation:(void(^)(NSIndexPath *indexPath))itemOperation {
    LMJWordItem *item = [self itemWithTitle:title subTitle:subTitle];
    item.itemOperation = itemOperation;
    return item;
}

- (instancetype)init
{
    if (self = [super init]) {
        _titleColor = [UIColor blackColor];
        _subTitleColor = [UIColor blackColor];
//        _cellHeight = AdaptedWidth(50);
        _titleFont = AdaptedFontSize(16);
        _subTitleFont = AdaptedFontSize(16);
        _subTitleNumberOfLines = 2;
    }
    
    return self;
}

- (CGFloat)cellHeight {
    if (!_cellHeight) {
        _cellHeight += 20;
        NSString *totalString = [NSString stringWithFormat:@"%@%@", self.title, self.subTitle];
        _cellHeight += [totalString boundingRectWithSize:CGSizeMake(kScreenWidth - 20, MAXFLOAT) options:0 attributes:@{NSFontAttributeName : self.subTitleFont} context:nil].size.height;
        _cellHeight = MAX(_cellHeight, 50);
        _cellHeight = AdaptedWidth(_cellHeight);
    }
    return _cellHeight;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"LMJWordItem - Title: %@, SubTitle: %@", self.title, self.subTitle];
}



//- (nonnull id)copyWithZone:(nullable NSZone *)zone {
//    LMJWordItem *copy = [[[self class] allocWithZone:zone] init];
//        
//    // Copy all properties to the new instance
//    copy.title = [self.title copy];
//    copy.titleFont = self.titleFont;
//    copy.titleColor = self.titleColor;
//    copy.subTitle = [self.subTitle copy];
//    copy.subTitleFont = self.subTitleFont;
//    copy.subTitleColor = self.subTitleColor;
//    copy.subTitleNumberOfLines = self.subTitleNumberOfLines;
//    copy.image = self.image;
//    copy.cellHeight = self.cellHeight;
//    copy.needCustom = self.needCustom;
//    copy.itemOperation = self.itemOperation;
//    
//    return copy;
//}

@end
