//
//  FeedbackView.h
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface FeedbackView : UIViewController<UITextViewDelegate,UITextFieldDelegate,MFMailComposeViewControllerDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *emailid;
    IBOutlet UITextField *mobno;
    IBOutlet UITextView *msg;
    IBOutlet UITextField *city;
    IBOutlet UITextField *country;

    UILabel *lbl;
    IBOutlet UILabel *label;
}
@property(nonatomic,retain) IBOutlet UITextField *name;
@property(nonatomic,retain) IBOutlet UITextField *city;
@property(nonatomic,retain) IBOutlet UITextField *country;
@property(nonatomic,retain) IBOutlet UITextField *emailid;
@property(nonatomic,retain) IBOutlet UITextField *mobno;
@property(nonatomic,retain) IBOutlet UITextView *msg;
@property(nonatomic,retain) UILabel *lbl;
-(IBAction)goback:(id)sender;

-(IBAction)send:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
