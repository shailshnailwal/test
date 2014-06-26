//
//  Testimonalsview.h
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Testimonalsview : UIViewController
{
    IBOutlet UITableView *tblview;
    NSMutableArray *lblArray;
    NSMutableArray *sublblArray;
    NSMutableArray *dateArray;
IBOutlet UILabel *label;
}
@property(nonatomic,retain)NSMutableArray *lblArray;
@property(nonatomic,retain)NSMutableArray *sublblArray;
@property(nonatomic,retain)NSMutableArray *dateArray;
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
