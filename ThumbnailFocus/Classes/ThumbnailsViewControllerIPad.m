//
//  ThumbnailsViewControllerIPad.m
//  ThumbnailFocus
//
//  Created by 金子修一郎 on 2014/06/30.
//  Copyright (c) 2014年 鄭 基旭. All rights reserved.
//

#import "ThumbnailsViewControllerIPad.h"

@interface ThumbnailsViewControllerIPad ()
@property (strong, nonatomic) FocusManager *focusManager;
@end

@implementation ThumbnailsViewControllerIPad

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // delegateを自信にセット
    self.focusManager = [[FocusManager alloc] init];
    self.focusManager.delegate = self;
    
    // Do any additional setup after loading the view from its nib.
    
    // IBOutletCollectionに接続されたUIImageView分ループする
    int count = 1;
    for (UIImageView* imageView in self.imageViews) {
        // Imageのセット
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", count]];
        [self.focusManager installOnView:imageView];
        imageView.tag = count;
        count++;
    }


}

// 回転対応
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

#pragma mark - FocusDelegate
- (UIViewController *)parentViewControllerForFocusManager
{
    return self.parentViewController;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
