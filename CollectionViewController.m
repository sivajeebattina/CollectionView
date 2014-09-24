//
//  CollectionViewController.m
//  CollectionView
//
//  Created by pcs20 on 9/24/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _imagesArray=@[@"bike1.jpg",@"bike2.jpg",@"bike3.jpg",@"bike4.jpg",@"bike6.jpg",@"bike7.jpg",@"bike8.jpg",@"bike9.jpg",@"bike11.jpg",@"bike12.jpg"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{


    return _imagesArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

 CollectionViewCell *imageCell=[collectionView dequeueReusableCellWithReuseIdentifier:@"imageView" forIndexPath:indexPath];
    
    
    
    imageCell.imageView.image=[UIImage imageNamed:[_imagesArray objectAtIndex:indexPath.row]];
    
    return imageCell;

}



@end
