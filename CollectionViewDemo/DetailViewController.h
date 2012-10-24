//
//  DetailViewController.h
//  CollectionViewDemo
//
//  Created by onoT on 2012/10/23.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;

@end
