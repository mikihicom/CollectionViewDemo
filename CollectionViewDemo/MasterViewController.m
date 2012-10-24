//
//  MasterViewController.m
//  CollectionViewDemo
//
//  Created by onoT on 2012/10/23.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"
#import "CollectionCell.h"


@interface MasterViewController () {
    NSMutableArray *_objects;
}

@property (nonatomic, strong) NSArray *photos;
@end

@implementation MasterViewController


- (void)loadDemoData
{
    NSMutableArray *samplePhotos = [NSMutableArray array];
    for (int i = 1; i <= 8; i++) {
        NSString *filename = [NSString stringWithFormat:@"p%d.jpg", i];
        [samplePhotos addObject:[UIImage imageNamed:filename]];
    }
    self.photos = @[samplePhotos];
    _objects = samplePhotos;
}


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // サンプルデータの読み込み
    [self loadDemoData];
    
    // ナビゲーションバーの色を変更
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = (CollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

    
    [cell setImage:[_objects objectAtIndex:indexPath.item]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
        UIImage *img = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:img];
        
    }
}

@end
