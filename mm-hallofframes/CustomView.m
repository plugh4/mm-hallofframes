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
- (IBAction)onRGBPressed:(UIButton *)sender {
    [self.delegate didTapButton:sender forIndex:self.cellIndex];
}

@end
