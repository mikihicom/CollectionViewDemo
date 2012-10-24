//
//  CollectionCell.m
//  CollectionViewDemo
//
//  Created by onoT on 2012/10/23.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setImage:(UIImage *)image
{
    [imageView setImage:image];
}

@end
