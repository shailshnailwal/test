//
//  LoginViewController.m
//  Projectapp
//
//  Created by Enuke New Mac on 10/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "LoginViewController.h"
#import "NewAppointment.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize txt,txt1;
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
    txt.delegate=self;
    txt1.delegate=self;

    // Do any additional setup after loading the view from its nib.
}
-(IBAction)login:(id)sender
{
    if(([txt.text isEqualToString:@"admin"])&&([txt1.text isEqualToString:@"admin"]))
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        // To Save A String
        [defaults setObject:@"YES" forKey:@"loginornot"];
        
        //saving an object
        
        // Synchronizing the defaults. If you don't do this the defaults may or may not sync.
        [defaults synchronize];
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Sucess" message:@"User login sucessfully" delegate:self cancelButtonTitle:NSLocalizedString(@"OK", @"OK button title") otherButtonTitles:nil];
        
        [al show];
    }
    else
    {
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid Username & password" delegate:self cancelButtonTitle:NSLocalizedString(@"OK", @"OK button title") otherButtonTitles:nil];
        
        [al show];
    }
 
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle=[alertView buttonTitleAtIndex:buttonIndex];
    if([alertView.title isEqualToString:@"Sucess"]) {
        NewAppointment *root=[[NewAppointment alloc]initWithNibName:@"NewAppointment" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    else if([buttonTitle isEqualToString:@"Disable"]) {
        
    }
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == txt) {
        [txt resignFirstResponder];
        [txt1 becomeFirstResponder];
    }
    else if (textField == txt1) {
        [txt resignFirstResponder];
        return NO;
        // here you can define what happens
        // when user presses return on the email field
    }
    return YES;
}
-(IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];

}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
