//
//  GalleryView.h
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryView : UIViewController
{
    NSArray *arr;
    NSArray *arr1;
IBOutlet UILabel *label;
}
@property(nonatomic,retain)NSArray *arr;
@property(nonatomic,retain)NSArray *arr1;
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
