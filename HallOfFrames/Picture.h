//
//  Picture.h
//  HallOfFrames
//
//  Created by Christopher Benavides on 6/2/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIColor* frameColor;
@property UIImage* image;

-(instancetype)initWithFrameColor:(UIColor*)frameColor andImage:(UIImage*)image;

@end
