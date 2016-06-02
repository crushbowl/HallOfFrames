//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by joy on 6/2/16.
//  Copyright © 2016 JanL. All rights reserved.
//

#import <UIKit/UIKit.h>


@class PictureCollectionViewCell;

@protocol PictureCollectionViewCellDelegate <NSObject>

@optional


@end


@interface PictureCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) id<PictureCollectionViewCellDelegate> delegate;


@end
