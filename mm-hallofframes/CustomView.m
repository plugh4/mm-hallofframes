//
//  CustomView.m
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import "CustomView.h"


@implementation CustomView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)onRGBPressed:(UIButton *)sender
{
    CGFloat r = 0.0;
    CGFloat g = 0.0;
    CGFloat b = 0.0;

    NSString *text = sender.titleLabel.text;
    if ([text isEqualToString:@"Red"]) {
        r = 1.0;
    } else if ([text isEqualToString:@"Green"]) {
        g = 1.0;
    } else if ([text isEqualToString:@"Blue"]) {
        b = 1.0;
    }
    
    int i = self.cellIndex;
    [self.delegate setColorForIndex:i red:r green:g blue:b];
}

@end
