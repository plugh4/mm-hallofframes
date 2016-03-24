//
//  CustomView.h
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RGBButtonDelegate
-(void)didTapButton:(UIButton *)button forIndex:(int)index;
@end


@interface CustomView : UIView
@property (nonatomic, assign) id <RGBButtonDelegate> delegate;
@property int cellIndex;

@end
