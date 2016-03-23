//
//  Picture.h
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *bgColor;

-(instancetype) initWithImage:(NSString *)imageName;

@end
