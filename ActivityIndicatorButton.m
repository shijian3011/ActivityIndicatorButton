//
//  ActivityIndicatorButton.m
//  ComicsIsland
//
//  Created by SHIJIAN on 16/1/6.
//  Copyright © 2016年 appfactory. All rights reserved.
//

#import "ActivityIndicatorButton.h"

@interface ActivityIndicatorButton ()

@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;

@end

@implementation ActivityIndicatorButton

#pragma mark - init

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self createActivityIndicatorView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createActivityIndicatorView];
    }
    return self;
}

#pragma mark - setter 

- (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle {
    _activityIndicatorViewStyle = activityIndicatorViewStyle;
    self.activityIndicatorView.activityIndicatorViewStyle = activityIndicatorViewStyle;
}

#pragma mark - public mehtod

- (void)startAnimating {
    self.enabled = NO;
    [self.activityIndicatorView startAnimating];
}

- (void)stopAnimating {
    [self.activityIndicatorView stopAnimating];
    self.enabled = YES;
}

- (void)changeActivityIndicatorCenter:(CGPoint)center {
    self.activityIndicatorView.center = center;
}

#pragma mark - UI Related

- (void)createActivityIndicatorView {
    self.activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    self.activityIndicatorView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    self.activityIndicatorView.hidesWhenStopped = YES;
    [self addSubview:self.activityIndicatorView];
}

@end
