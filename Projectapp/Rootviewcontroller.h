//
//  Rootviewcontroller.h
//  Projectapp
//
//  Created by Enuke New Mac on 16/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface Rootviewcontroller : UIViewController<iCarouselDataSource,iCarouselDelegate,UITableViewDataSource,UITableViewDataSource>
{
    __weak IBOutlet UIPageControl *_pageControl;
    IBOutlet     UITableView *myTableView;
    NSMutableArray *myData;
    IBOutlet UIImageView *imgviewlog;
    
}
@property (nonatomic,strong) IBOutlet UILabel *descnavlabel;
@property (nonatomic,strong) IBOutlet UIImageView *descimgview;
@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@property (nonatomic,strong) IBOutlet UIView *viewScrl;
@property (nonatomic,strong) IBOutlet UIView *viewchildController;
@property (nonatomic,strong) IBOutlet UIView *imgViewTop;
@property (nonatomic,strong)IBOutlet UIImageView *imgviewlog;
-(IBAction)closeView:(id)sender ;
-(IBAction)menuView:(id)sender ;
-(void)hideView ;
-(IBAction)Navigate ;
- (IBAction) pageTurn: (UIPageControl *) aPageControl;
@end
