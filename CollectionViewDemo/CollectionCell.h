//
//  CollectionCell.h
//  CollectionViewDemo
//
//  Created by onoT on 2012/10/23.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionCell : UICollectionViewCell
{
    IBOutlet UIImageView *imageView;
}
- (void)setImage:(UIImage *)image;
@end
