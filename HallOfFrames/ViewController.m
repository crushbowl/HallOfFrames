//
//  ViewController.m
//  HallOfFrames
//
//  Created by Christopher Benavides on 6/2/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, CustomViewDelegate>
@property NSMutableArray *pictures;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Picture *photo1 = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"ImageOne"]];
    Picture *photo2 = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"ImageTwo"]];
    Picture *photo3 = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"ImageThree"]];
    Picture *photo4 = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"ImageFour"]];
    Picture *photo5 = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"ImageFive"]];
    self.pictures = [NSMutableArray arrayWithObjects:photo1, photo2, photo3, photo4, photo5, nil];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
    Picture *photo = self.pictures[indexPath.item];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, cell.frame.size.width - 40, cell.frame.size.height - 40)];
    imageView.image = photo.image;
    [cell addSubview:imageView];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomView * customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    customView.delegate = self;
    customView.path = indexPath;
    [self.view addSubview:customView];
    
    [customView setFrame:self.view.frame];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}


-(void)customViewDelegate:(CustomView *)view didPressButton:(UIButton *)sender {
[view removeFromSuperview];
[self.collectionView cellForItemAtIndexPath:view.path].backgroundColor = sender.backgroundColor;
}
    
@end
