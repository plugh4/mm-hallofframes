//
//  ViewController.m
//  mm-hallofframes
//
//  Created by Christopher Serra on 3/23/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "Picture.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *dataArray; // Pictures
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // create + populate dataArray[]
    self.dataArray = [NSMutableArray new];
    NSArray *imageNames =
        @[@"dog1.jpeg",
          @"dog2.jpeg",
          @"dog3.jpeg",
          @"dog4.jpeg",
          @"dog5.jpeg"
          ];
    for (NSString *name in imageNames) {
        Picture *picture = [[Picture alloc] initWithImage:name];
        [self.dataArray addObject:picture];
    }
}

// count of dataArray elements
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return [self.dataArray count];
}

// populate cell from dataArray[i]
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCell" forIndexPath:indexPath];
    
    int i = indexPath.row;
    Picture *picture = self.dataArray[i];
    cell.imageView.image = picture.image;
    //cell.button.imageView.image = [UIImage imageNamed:@"dog1.jpeg"];
    cell.backgroundColor = picture.bgColor;
    
    NSLog(@"%@", NSStringFromSelector(_cmd));

    
    return cell;
}
    
    
@end
