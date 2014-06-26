//
//  FeedbackView.m
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "FeedbackView.h"

@interface FeedbackView ()

@end

@implementation FeedbackView
@synthesize name,emailid,mobno,msg,lbl;
@synthesize label,city,country;

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
    label.text=@"Feedback";

//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *backBtnImage = [UIImage imageNamed:@"back_btn.png"];
//    UIImage *backBtnImagePressed = [UIImage imageNamed:@"back_btn.png"];
//    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
//    [backBtn setBackgroundImage:backBtnImagePressed forState:UIControlStateHighlighted];
//    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    backBtn.frame = CGRectMake(-8, -20, 80, 33);
//    UIView *backButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 33)];
//    backButtonView.bounds = CGRectOffset(backButtonView.bounds, -14, -7);
//    [backButtonView addSubview:backBtn];
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backButtonView];
//    self.navigationItem.leftBarButtonItem = backButton;
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 74)];
//    
//    
//    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [titleLabel setTitle:@"FeedBack" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-14,-15, 140, 20);
//    
//    
//    
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//    self.navigationController.navigationBar.hidden=NO;
  lbl = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 0.0,msg.frame.size.width - 10.0, 34.0)];
lbl.font = [UIFont italicSystemFontOfSize:14.0f];
    [lbl setText:@"Write Your FeedBack"];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setTextColor:[UIColor lightGrayColor]];
    msg.delegate = self;
    
    [msg addSubview:lbl];
    name.delegate=self;
    emailid.delegate=self;
    mobno.delegate=self;
    msg.delegate=self;
    city.delegate=self;
    country.delegate=self;
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UIView * txt in self.view.subviews){
        if ([txt isKindOfClass:[UITextField class]] && [txt isFirstResponder]) {
            [txt resignFirstResponder];
        }
    }
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
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
- (void)textViewDidEndEditing:(UITextView *)theTextView
{
    if (![msg hasText]) {
        lbl.hidden = NO;
    }
}

- (void) textViewDidChange:(UITextView *)textView
{
    if(![msg hasText]) {
        lbl.hidden = NO;
    }
    else{
        lbl.hidden = YES;
    }
}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == name) {
        [name resignFirstResponder];
        [emailid becomeFirstResponder];
    } else if (textField == emailid) {
        [emailid resignFirstResponder];
        [mobno becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == mobno) {
        [mobno resignFirstResponder];
        [city becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == city) {
        [city resignFirstResponder];
        [country becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == country) {
        [country resignFirstResponder];
        [msg becomeFirstResponder];
        return NO;
        // here you can define what happens
        // when user presses return on the email field
    }
    return YES;
}
-(IBAction)send:(id)sender
{
    NSString *nametext=name.text;
    NSString *emailtext=emailid.text;
    NSString *mobno1=mobno.text;
    NSString *citytext=city.text;
    NSString *countrytext=country.text;

    BOOL email = [self NSStringIsValidEmail:emailtext];
    if(![emailtext isEqualToString:@""])
    {
        
        if (!email) {
            
            UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Email is not valid. Please type valid email" delegate:self cancelButtonTitle:NSLocalizedString(@"OK", @"OK button title") otherButtonTitles:nil];
            
            [al show];
            
            
            return;
            
        }
    }
    if(![mobno1 isEqualToString:@""])
    {
        NSScanner *scanner = [NSScanner scannerWithString:mobno1];
        BOOL email1 = [scanner scanInteger:NULL] && [scanner isAtEnd];

        if (!email1) {
            
            UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Mobile no. is not valid. Please type valid Right Mobile no." delegate:self cancelButtonTitle:NSLocalizedString(@"OK", @"OK button title") otherButtonTitles:nil];
            
            [al show];
            
            
            return;
            
        }
    }
    if (([nametext isEqualToString:@""])||([emailtext isEqualToString:@""])||([mobno1 isEqualToString:@""])||([msg.text isEqualToString:@""])||([citytext isEqualToString:@""])||([countrytext isEqualToString:@""])) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Please Input values provide"
                              message: [NSString  stringWithFormat:@"All entry can not be blank"]
                              delegate: nil
                              cancelButtonTitle: @"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
    
    else
    {
        NSString *emailTitle = @"ARMC Application Appointment";
        // Email Content
        NSString *messageBody = [NSString stringWithFormat:@"Name : %@\n Email id: %@\n Mobile No.: %@\n Feedback: %@\n City: %@\n Country: %@",name.text,emailid.text,mobno.text,msg.text,city.text,country.text];
        // To address
        NSArray *toRecipents = [NSArray arrayWithObject:@"shalabh.bhatia@enukesoftware.com"];
        
        MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
        mc.mailComposeDelegate = self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
        
        // Present mail view controller on screen
        [self presentViewController:mc animated:YES completion:NULL];
//        UIAlertView *alert = [[UIAlertView alloc]
//                              initWithTitle: @"Submit Successfully"
//                              message: [NSString  stringWithFormat:@"Check your email"]
//                              delegate:nil
//                              cancelButtonTitle: @"OK"
//                              otherButtonTitles:nil];
//        [alert show];
        
    }

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
