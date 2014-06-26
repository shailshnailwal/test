//
//  NewsletterView.m
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "NewsletterView.h"
#import "PDfViewer.h"

@interface NewsletterView ()

@end

@implementation NewsletterView
@synthesize name,emailid;
@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    label.text=@"Newsletters";

//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *backBtnImage = [UIImage imageNamed:@"back_btn.png"];
//    UIImage *backBtnImagePressed = [UIImage imageNamed:@"Logo.png"];
//    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
//    [backBtn setBackgroundImage:backBtnImagePressed forState:UIControlStateHighlighted];
//    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    backBtn.frame = CGRectMake(0, 0, 80, 33);
//    UIView *backButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 33)];
//    backButtonView.bounds = CGRectOffset(backButtonView.bounds, -14, -7);
//    [backButtonView addSubview:backBtn];
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backButtonView];
//    backBtn.frame=CGRectMake(0, -20, 80, 33);
//    self.navigationItem.leftBarButtonItem = backButton;
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 74)];
//    
//    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [titleLabel setTitle:@"NewsLetter" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-10,-15, 140, 20);
//    
//    
//    
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//    self.navigationController.navigationBar.hidden=NO;
    name.delegate=self;
    emailid.delegate=self;
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UIView * txt in self.view.subviews){
        if ([txt isKindOfClass:[UITextField class]] && [txt isFirstResponder]) {
            [txt resignFirstResponder];
        }
    }
}


- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
-(IBAction)readmore:(id)sender
{
    PDfViewer *root=[[PDfViewer alloc]initWithNibName:@"PDfViewer" bundle:nil];
    root.index=99;
    [self.navigationController pushViewController:root animated:NO];

}
-(IBAction)subscibe:(id)sender
{
    NSString *nametext=name.text;
    NSString *emailtext=emailid.text;
    BOOL email = [self NSStringIsValidEmail:emailtext];
if(![emailtext isEqualToString:@""])
{
    
    if (!email) {
        
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Email is not valid. Please type valid email" delegate:self cancelButtonTitle:NSLocalizedString(@"OK", @"OK button title") otherButtonTitles:nil];
        
        [al show];
        
        
        return;
        
    }
}
    if (([nametext isEqualToString:@""])||([emailtext isEqualToString:@""])) {
        
        if(([nametext isEqualToString:@""])&&([emailtext isEqualToString:@""]))
        {
            UIAlertView *alert = [[UIAlertView alloc]
                                  initWithTitle: @"Please provide Input values"
                                  message: [NSString  stringWithFormat:@"Email id & name can not be blank"]
                                  delegate: nil
                                  cancelButtonTitle: @"OK"
                                  otherButtonTitles:nil];
            [alert show];
            return;
            
        }
        if([nametext isEqualToString:@""])
        {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Please provide Input values"
                              message: [NSString  stringWithFormat:@"name can not be blank"]
                              delegate: nil
                              cancelButtonTitle: @"OK"
                              otherButtonTitles:nil];
        [alert show];
        }
        if([emailtext isEqualToString:@""])
        {
            UIAlertView *alert = [[UIAlertView alloc]
                                  initWithTitle: @"Please provide Input values"
                                  message: [NSString  stringWithFormat:@"Email Id can not be blank"]
                                  delegate: nil
                                  cancelButtonTitle: @"OK"
                                  otherButtonTitles:nil];
            [alert show];
        }
    }
    
    else
    {
//        UIAlertView *alert = [[UIAlertView alloc]
//                              initWithTitle: @"Submit Successfully"
//                              message: [NSString  stringWithFormat:@"Check your email"]
//                              delegate:nil
//                              cancelButtonTitle: @"OK"
//                              otherButtonTitles:nil];
//        [alert show];
        NSString *emailTitle = @"ARMC Application Appointment";
        // Email Content
        NSString *messageBody = [NSString stringWithFormat:@"Name : %@\n Email id: %@",name.text,emailid.text];
        // To address
        NSArray *toRecipents = [NSArray arrayWithObject:@"newsletter@armcivf.net"];
        
        MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
        mc.mailComposeDelegate = self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
        
        // Present mail view controller on screen
        [self presentViewController:mc animated:YES completion:NULL];
        
    }


}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == name) {
        [name resignFirstResponder];
        [emailid becomeFirstResponder];
    } else if (textField == emailid) {
        [emailid resignFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
   // when user presses return on the email field
    return YES;
}
-(BOOL) NSStringIsValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = YES; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSString *laxString = @".+@.+\\.[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
