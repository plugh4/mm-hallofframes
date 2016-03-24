//
//  CustomView.h
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RGBButtonDelegate
@optional
-(void)setColorForIndex:(int)index red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
@end


@interface CustomView : UIView
@property (nonatomic, assign) id <RGBButtonDelegate> delegate;
@property int cellIndex;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;


@end
