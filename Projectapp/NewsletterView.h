//
//  NewsletterView.h
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NewsletterView : UIViewController<UITextFieldDelegate,MFMailComposeViewControllerDelegate>{
    IBOutlet UITextField *name;
    IBOutlet UITextField *emailid;
    IBOutlet UILabel *label;
}

@property(nonatomic,retain)IBOutlet UITextField *name;
@property(nonatomic,retain)IBOutlet UITextField *emailid;
-(IBAction)subscibe:(id)sender;
-(IBAction)goback:(id)sender;
-(IBAction)readmore:(id)sender;

@property (nonatomic,strong) IBOutlet UILabel *label;

@end
