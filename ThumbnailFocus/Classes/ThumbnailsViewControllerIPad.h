//
//  ThumbnailsViewControllerIPad.h
//  ThumbnailFocus
//
//  Created by 金子修一郎 on 2014/06/30.
//  Copyright (c) 2014年 鄭 基旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FocusManager.h"

@interface ThumbnailsViewControllerIPad : UIViewController<FocusDelegate>

@property (nonatomic, strong) IBOutletCollection(UIImageView) NSArray *imageViews;

@end
