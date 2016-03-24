//
//  PictureCollectionViewCell.h
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import <UIKit/UIKit.h>


//@protocol PictureCellDelegate
//-(void)didTapCell:(UICollectionViewCell *)cell;
//@end


@interface PictureCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//@property (nonatomic, assign) id <PictureCellDelegate> delegate;
@end
