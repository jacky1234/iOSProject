//
//  LMJWordArrowItem.m
//  PLMMPRJK
//
//  Created by HuXuPeng on 2017/4/11.
//  Copyright © 2017年 GoMePrjk. All rights reserved.
//

#import "LMJWordArrowItem.h"

@implementation LMJWordArrowItem

- (NSString *)description {
    // Call the parent class's description method
    NSString *parentDescription = [super description];
    
    // Include additional information specific to LMJWordArrowItem
    NSString *arrowDescription = [NSString stringWithFormat:@"Arrow Class: %@", NSStringFromClass([self class])];
    
    // Combine the descriptions
    return [NSString stringWithFormat:@"%@, %@", parentDescription, arrowDescription];
}

@end
