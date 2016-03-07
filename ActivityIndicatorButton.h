//
//  ActivityIndicatorButton.h
//  ComicsIsland
//
//  Created by SHIJIAN on 16/1/6.
//  Copyright © 2016年 appfactory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityIndicatorButton : UIButton

@property (nonatomic, assign) UIActivityIndicatorViewStyle activityIndicatorViewStyle; // default is UIActivityIndicatorViewStyleWhiteLarge

- (void)startAnimating;

- (void)stopAnimating;

- (void)changeActivityIndicatorCenter:(CGPoint)center;

@end
