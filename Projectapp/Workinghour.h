//
//  Workinghour.h
//  Projectapp
//
//  Created by Enuke New Mac on 05/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Workinghour : UIViewController
{
    IBOutlet UILabel *lbl;
    IBOutlet UILabel *toplbl;
    IBOutlet UILabel *lbl1;
    IBOutlet UILabel *lbl2;
    int indexselect;
    NSArray *arr;
}
@property(nonatomic,retain)NSArray *arr;
@property(nonatomic,strong)IBOutlet UILabel *lbl;
@property(nonatomic,strong)IBOutlet UILabel *lbl1;
@property(nonatomic,strong)IBOutlet UILabel *lbl2;
@property(nonatomic,assign) int indexselect;
@property(nonatomic,strong)IBOutlet UILabel *toplbl;
-(IBAction)goback:(id)sender;

@end
