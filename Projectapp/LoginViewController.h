//
//  LoginViewController.h
//  Projectapp
//
//  Created by Enuke New Mac on 10/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UIAlertViewDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *txt;
    IBOutlet UITextField *txt1;
}
@property(nonatomic,retain)IBOutlet UITextField *txt;
@property(nonatomic,retain)IBOutlet UITextField *txt1;

-(IBAction)back:(id)sender;
-(IBAction)login:(id)sender;

@end
