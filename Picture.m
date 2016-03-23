//
//  Picture.m
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype) initWithImage:(NSString *)imageName
{
    self = [super init];
    if (self) {
        self.image = [UIImage imageNamed:imageName];
        self.bgColor = [UIColor lightGrayColor];
    }
    return self;
}
@end
