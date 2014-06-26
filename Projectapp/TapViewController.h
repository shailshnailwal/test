//
//  TapViewController.h
//  Projectapp
//
//  Created by Enuke New Mac on 26/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapViewController : UIViewController
{
    int index;
    enum myViewMode mode;
    UIImage *gImage;
    IBOutlet UILabel *label;
}
- (id)initWithImages:(NSArray *)images WithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil idx:(int)indx andMode:(int)modes;
@property (nonatomic, strong) NSArray *images;
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
