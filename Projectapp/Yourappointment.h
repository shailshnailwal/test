//
//  Yourappointment.h
//  Projectapp
//
//  Created by Enuke New Mac on 29/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Yourappointment : UIViewController
{
    IBOutlet UILabel *label;
IBOutlet UIScrollView *scrolldown;
}
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;
@property (nonatomic,strong)IBOutlet UIScrollView *scrolldown;
@end
