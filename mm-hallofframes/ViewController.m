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
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, RGBButtonDelegate>
@property NSMutableArray *dataArray; // Pictures
@property CustomView *customView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

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
    
    // create RGB
    self.customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] objectAtIndex:0];
    self.customView.delegate = self;
}


#pragma mark - UITableViewDataSource


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
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCell" forIndexPath:indexPath];
    
    int i = indexPath.row;
    Picture *picture = self.dataArray[i];
    cell.imageView.image = picture.image;
    cell.backgroundColor = picture.bgColor;
    
    return cell;
}


-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    int i = indexPath.row;
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSLog(@"row %i", indexPath.row);
    
    // show RGB
    NSLog(@"adding subview");
    self.customView.cellIndex = i;
    [self.view addSubview:self.customView];
}

- (UIColor *)stringToColor:(NSString *)colorString {
//    NSDictionary *map = @[ @"Red"   => [UIColor redColor],
//                           @"Green" => [UIColor greenColor],
//                           @"Blue"  => [UIColor blueColor]];
//    for (NSString *key in map) {
//        if ([colorString isEqualToString:key]) { return [map objectForKey:key]; }
//    }
    
    if (       [colorString isEqualToString:@"Red"]) {
        return [UIColor redColor];
    } else if ([colorString isEqualToString:@"Green"]) {
        return [UIColor greenColor];
    } else if ([colorString isEqualToString:@"Blue"]) {
        return [UIColor blueColor];
    } else  {
        return [UIColor whiteColor];
    }
}

-(void)didTapButton:(UIButton *)button forIndex:(int)index {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSLog(@"button %@", button.titleLabel.text);
    NSLog(@"index %i", index);

    // pick color
    // set cell background color
    Picture *data = self.dataArray[index];
    data.bgColor = [self stringToColor:button.titleLabel.text];
    [self.collectionView reloadData];
    
    // hide RGB
    [self.customView removeFromSuperview];
}

-(void)setColorForIndex:(int)index red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue 
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSLog(@"r=%.2f, g=%.2f, b=%.2f", red, green, blue);
    NSLog(@"index %i", index);
    
    // pick color
    // set cell background color
    Picture *data = self.dataArray[index];
    data.bgColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    [self.collectionView reloadData];
    
    // hide RGB
    [self.customView removeFromSuperview];
    
}




@end
