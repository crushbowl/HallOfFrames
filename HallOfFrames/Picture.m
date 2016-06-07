//
//  Picture.m
//  HallOfFrames
//
//  Created by Christopher Benavides on 6/2/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithFrameColor:(UIColor*)frameColor andImage:(UIImage*)image;
{
    self = [super init];
    if (self) {
        self.frameColor = frameColor;
        self.image = image;
    }
    return self;
}

@end
