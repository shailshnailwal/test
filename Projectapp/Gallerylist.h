//
//  Gallerylist.h
//  Projectapp
//
//  Created by Enuke New Mac on 23/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Gallerylist : UIViewController
{
    NSString *strlabel;
    UIScrollView *contentView;
    enum myViewMode mode;
    NSMutableArray *arrayAsync;
    IBOutlet UILabel *label;
}
@property(nonatomic,retain) NSString *strlabel;
@property (nonatomic, strong) NSMutableArray *images;
@property (nonatomic, strong)IBOutlet UIScrollView *contentView;
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end