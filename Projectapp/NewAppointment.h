//
//  NewAppointment.h
//  Projectapp
//
//  Created by Enuke New Mac on 27/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NewAppointment : UIViewController<UITextFieldDelegate,UITextViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource,MFMailComposeViewControllerDelegate>
{

    IBOutlet UITextField *name;
    IBOutlet UITextField *emailid;
    IBOutlet UITextField *mobno;
    IBOutlet UITextField *date;
    IBOutlet UITextField *prefloc;
    IBOutlet UITextField *doc;
    IBOutlet UIButton *age;
    IBOutlet UILabel *lblstar;
    IBOutlet UILabel *lblstar1;
    UIButton *button;
    UIView *viewdate;
    UIDatePicker       *picker;
    IBOutlet UILabel *label;
    IBOutlet  UITextView *txtview;
    UILabel *lbl;
    IBOutlet UIScrollView *scrolldown;
    IBOutlet UITextField *countryname;


    IBOutlet UIButton *myButton;
    IBOutlet UIButton *prfdoc;
    IBOutlet UIButton *patmode;
    IBOutlet UIButton *submit;

    IBOutlet UIButton *gender;

    IBOutlet UITextField *cityname;
    IBOutlet UITextField *statename;
    IBOutlet UITextField *armcid;

    IBOutlet UITextField *zip;
    IBOutlet UIButton *selectdate;
    NSArray *arr;
    NSString *pickeddate;
}
@property(nonatomic,strong)UIView *viewdate;
@property(nonatomic,strong)IBOutlet UILabel *lblstar;
@property(nonatomic,strong)IBOutlet UILabel *lblstar1;
@property(nonatomic,strong)IBOutlet UITextField *name;
@property(nonatomic,strong)IBOutlet UITextField *emailid;
@property(nonatomic,strong)IBOutlet UITextField *mobno;
@property(nonatomic,strong)IBOutlet UITextField *date;
@property(nonatomic,strong)IBOutlet UITextField *prefloc;
@property(nonatomic,strong)IBOutlet UITextField *doc;
@property(nonatomic,strong)IBOutlet UIButton *gender;
@property(nonatomic,strong)IBOutlet UITextField *cityname;
@property(nonatomic,strong)IBOutlet UITextField *statename;
@property(nonatomic,strong)IBOutlet UIButton *submit;
@property(nonatomic,strong) UILabel *lbl;
@property(nonatomic,strong)IBOutlet UITextField *zip;
@property(nonatomic,strong) IBOutlet UITextField *armcid;
@property(nonatomic,strong) IBOutlet  UITextView *txtview;
@property(nonatomic,strong) IBOutlet UIButton *age;
@property(nonatomic,strong)IBOutlet UITextField *countryname;
@property(nonatomic,strong)IBOutlet UIButton *prfdoc;
@property(nonatomic,strong)IBOutlet UIButton *selectdate;
@property(nonatomic,strong)IBOutlet UIButton *patmode;
@property(nonatomic,strong)  NSArray *arr;
@property(nonatomic,strong) UIButton *button;
@property (strong, nonatomic) IBOutlet UIDatePicker *picker;
@property(nonatomic,strong)NSString *pickeddate;
-(IBAction)goback:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;
@property (nonatomic,strong)IBOutlet UIScrollView *scrolldown;
@property(nonatomic,strong)IBOutlet UIButton *myButton;
-(void)dropDown;
-(IBAction)selectage:(id)sender;
-(IBAction)selectgender:(id)sender;
-(IBAction)selectdoctors:(id)sender;
-(IBAction)selectpationtmode:(id)sender;
-(IBAction)selectdate:(id)sender;
- (void)takedatevalue:(UIButton*)button;

@end
