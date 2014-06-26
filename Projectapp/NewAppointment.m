//
//  NewAppointment.m
//  Projectapp
//
//  Created by Enuke New Mac on 27/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "NewAppointment.h"

@interface NewAppointment () <UITableViewDelegate, UITableViewDataSource>
{
    BOOL isDrop;
}
@property(nonatomic, retain)UITableView *tableview;
@property(nonatomic, retain)NSArray *dataArray;
@end

@implementation NewAppointment
@synthesize name,emailid,mobno,date,prefloc,doc,lbl,txtview,age,gender,cityname,statename,countryname,prfdoc,patmode,submit,arr,button,picker,selectdate,pickeddate,viewdate,armcid,lblstar,lblstar1;
@synthesize label,zip;
@synthesize scrolldown,myButton;
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
//    self.sv1.contentSize=CGSizeMake(500, 600);
//       [self.sv1 setScrollEnabled:YES];
 
//    UIView *vi=[[UIView alloc] initWithFrame:CGRectMake(30, 60, 600, 800)];
//    
//    [vi setBackgroundColor:[UIColor redColor]];
//    
//    [self.sv1 addSubview:vi];
    
    
    
    
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 74)];
//    [sv setContentSize:CGSizeMake(320,800)];
//    [sv setBackgroundColor:[UIColor blackColor]];
////	[sv setCanCancelContentTouches:NO];
//	sv.clipsToBounds = YES;	// default is NO, we want to restrict drawing within our scrollview
//	sv.indicatorStyle = UIScrollViewIndicatorStyleWhite;
////	UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image0.jpg"]];
////	[scrollView2 addSubview:imageView];
////	[sv setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
//	[sv setScrollEnabled:YES];
////    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *backBtnImage = [UIImage imageNamed:@"back_btn.png"];
//    UIImage *backBtnImagePressed = [UIImage imageNamed:@"back_btn.png"];
//    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
//    [backBtn setBackgroundImage:backBtnImagePressed forState:UIControlStateHighlighted];
//    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    backBtn.frame = CGRectMake(0, 0, 80, 33);
//    UIView *backButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 33)];
////    backButtonView.bounds = CGRectOffset(backButtonView.bounds, 0, 15);
//    [backButtonView addSubview:backBtn];
//    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(89,150,100,30)];
//    containerView.layer.borderColor = [[UIColor redColor] CGColor];
//    containerView.layer.borderWidth = 1.0;
//    UIImage *image = [UIImage imageNamed:@"back_btn.png"];
//    UIButton *navigationButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [navigationButton setFrame:CGRectMake(-10,-20,100,30)];
//    [navigationButton setImage:image forState:UIControlStateNormal];
//     [navigationButton addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    [containerView addSubview:navigationButton];
//    
//    UIBarButtonItem *navigationBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:containerView];
//    self.navigationItem.leftBarButtonItem = navigationBarButtonItem;
    
//    UIImage *faceImage = [UIImage imageNamed:@"back_btn.png"];
//    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
//    face.bounds = CGRectMake( 0, 0, 80,33);
//    [face addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    [face setImage:faceImage forState:UIControlStateNormal];
//    UIBarButtonItem *faceBtn = [[UIBarButtonItem alloc] initWithCustomView:face];
//
////   UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_btn.png"] style:UIBarStyleBlack target:self action:@selector(goback)];
//    
//    self.navigationItem.leftBarButtonItem = faceBtn;
    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
label.text=@"New Appointment";
//    [label setTitle:@"New Appointment" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentLeft;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(0,-15, 200, 20);
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
    txtview.delegate=self;
    cityname.delegate=self;
    statename.delegate=self;
    zip.delegate=self;
    countryname.delegate=self;
    
    mobno.delegate=self;
    date.delegate=self;
    prefloc.delegate=self;
    doc.delegate=self;
    scrolldown=[[UIScrollView alloc]initWithFrame:CGRectMake(5, 75, 311, 443)];
    scrolldown.userInteractionEnabled=YES;
//    scrolldown.backgroundColor=[UIColor orangeColor];
    
    [self.view addSubview:scrolldown];
    
//    UIImageView *imgv=[[UIImageView alloc]initWithFrame:CGRectMake(0,0,320,450)];
//    
//    imgv.image=[UIImage imageNamed:@"01.jpg"];
    
//    [scrolldown addSubview:emailid];
//    [scrolldown addSubview:name];
// 
    //
    [scrolldown addSubview:mobno];
    [scrolldown addSubview:cityname];
    [scrolldown addSubview:statename];
    [scrolldown addSubview:age];
    [scrolldown addSubview:gender];
    [scrolldown addSubview:zip];
    [scrolldown addSubview:name];
    [scrolldown addSubview:countryname];
    [scrolldown addSubview:selectdate];

    [scrolldown addSubview:emailid];
    [scrolldown addSubview:prfdoc];
    [scrolldown addSubview:patmode];
    [scrolldown addSubview:submit];
    [scrolldown addSubview:armcid];
    [[txtview layer] setBorderWidth:2.0f];
    [[txtview layer] setBorderColor:[UIColor colorWithRed:163.0/255.0 green:163.0/255.0  blue:163.0/255.0  alpha:255.0/255.0 ].CGColor];
    txtview.layer.cornerRadius =5;//

    [scrolldown addSubview:txtview];


//    imgv.userInteractionEnabled=YES;
    
    scrolldown.contentSize=CGSizeMake(311,700);
   
    arr=[[NSArray alloc]initWithObjects:@"Choose Doctor",@"Dr.K.U.Kunjumoideen",@"Dr.Sreeja Sajith",
@"Dr.Premu Johnson",@"Dr. Aysha Anjuna",
        @"Dr. Saneej K", @"Dr. Kavitha Roshan",@"Dr. Paulose Chally",nil];
//    
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 100, 320, 0) style:UITableViewStylePlain];
    
    self.tableview.backgroundColor=[UIColor whiteColor];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    [self.view addSubview:self.tableview];
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 0.0,txtview.frame.size.width - 10.0, 34.0)];
    lbl.font = [UIFont italicSystemFontOfSize:14.0f];
    [lbl setText:@"Enter Your Address"];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setTextColor:[UIColor lightGrayColor]];
//    txtview.delegate = self;
    
    [txtview addSubview:lbl];
    [[armcid layer] setBorderWidth:2.0f];
    [[armcid layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
    [[myButton layer] setBorderWidth:2.0f];
    [[myButton layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
//myButton.layer.cornerRadius =5;//
    [[patmode layer] setBorderWidth:2.0f];
    [[patmode layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
//    patmode.layer.cornerRadius =5;//
    [[prfdoc layer] setBorderWidth:2.0f];
    [[prfdoc layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
//    prfdoc.layer.cornerRadius =5;//
    [[gender layer] setBorderWidth:2.0f];
    [[gender layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
//    gender.layer.cornerRadius =5;
    [[selectdate layer] setBorderWidth:2.0f];
    [[selectdate layer] setBorderColor:[UIColor colorWithRed:143.0/255.0 green:143.0/255.0  blue:143.0/255.0  alpha:255.0/255.0].CGColor];
//    selectdate.layer.cornerRadius =5;
    
    scrolldown.userInteractionEnabled=YES;
    viewdate.hidden=YES;
    armcid.hidden=YES;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
    [scrolldown addGestureRecognizer:singleTap];
    
    
//    isDrop = NO;
    // Do any additional setup after loading the view from its nib.
}
- (void)viewWillAppear:(BOOL)animated{
//    [self.scrolldown setScrollEnabled:YES];
//    [self.scrolldown setContentSize:CGSizeMake(320, 20000)];
    

//    self.scrolldown.backgroundColor=[UIColor greenColor];
}
- (void)singleTapGestureCaptured:(UITapGestureRecognizer *)gesture
{
    [self.view endEditing:YES];

}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}
- (void)textViewDidEndEditing:(UITextView *)theTextView
{
    if (![txtview hasText]) {
        lbl.hidden = NO;
    }
}

- (void) textViewDidChange:(UITextView *)textView
{
    if(![txtview hasText]) {
        lbl.hidden = NO;
    }
    else{
        lbl.hidden = YES;
    }
}
-(void)dropDown
{
    
    
    if (!isDrop) {
        
        [UIView animateWithDuration:0.75 animations:^{
            
            self.tableview.frame = CGRectMake(0, 200, 320,200);
            
            
        } completion:^(BOOL finished) {
            NSLog(@"Finished");
        }];
        
        
        
    }
    else
    {
        
        [UIView animateWithDuration:0.75 animations:^{
            
            self.tableview.frame = CGRectMake(0, 200, 320, 0 );
            
            
        } completion:^(BOOL finished) {
            NSLog(@"Finished");
        }];
    }
    
    isDrop =!isDrop;
}
-(IBAction)selectage:(id)sender
{
    button = (UIButton *)sender;

    arr=nil;
    arr=[[NSArray alloc]initWithObjects:@"Select Age",@"25", @"26", @"27",@"28",@"29",@"30",
         @"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"40",
         @"41", @"42", @"43", @"44", @"45", @"46", @"47", @"48", @"49", @"50",
         @"51", @"52", @"53", @"54", @"55", @"56", @"57", @"58", @"59", @"60",
         @"61", @"62", @"63", @"64", @"65", @"66", @"67", @"68", @"69", @"70",
         @"71", @"72", @"73", @"74", @"75", @"76", @"77", @"78", @"79", @"80",
         @"81", @"82", @"83", @"84", @"85", @"86", @"87", @"88", @"89", @"90",
         @"91", @"92", @"93", @"94", @"95", @"96", @"97", @"98", @"99",nil ];
    [self.tableview reloadData];
    isDrop = NO;
    [self dropDown];
}
-(IBAction)selectgender:(id)sender
{
    button = (UIButton *)sender;

    arr=nil;
    arr=[[NSArray alloc]initWithObjects:@"Select your gender",@"Male",
         @"Female",nil ];
    [self.tableview reloadData];
    isDrop = NO;
    [self dropDown];
}
-(IBAction)selectpationtmode:(id)sender
{
    button = (UIButton *)sender;
    arr=nil;
    arr=[[NSArray alloc]initWithObjects:@"Select Patient Mode",@"Already consulted ARMC doctors",
         @"First time visit",nil ];
    [self.tableview reloadData];
    isDrop = NO;
    [self dropDown];
}

-(IBAction)selectdate:(id)sender
{        viewdate=[[UIView alloc]initWithFrame:CGRectMake(0, 200, 320, 200)];
    [viewdate setBackgroundColor:[UIColor grayColor]];
    if(self.picker == nil){
    
        self.picker = [[UIDatePicker alloc] init];
        
        //set the action method that will listen for changes to picker value
        [self.picker addTarget:self
                              action:@selector(datePickerDateChanged:)
                    forControlEvents:UIControlEventValueChanged];
    }
    self.picker.datePickerMode = UIDatePickerModeDate;
    [self.picker setFrame:CGRectMake(0, 5, 320, 200)];
//    [self.picker setBackgroundColor:[UIColor greenColor]];
    [viewdate addSubview:self.picker];
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 addTarget:self               action:@selector(takedatevalue:)
     forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"Done" forState:UIControlStateNormal];
    button1.frame = CGRectMake(200.0, 0, 160.0, 40.0);
    [viewdate addSubview:button1];
//      UIButton *doneButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 100, 100)];
//    [doneButton setBackgroundImage:[UIImage imageNamed:@"header_bg.png"] forState:U ];
//    [viewdate addSubview:doneButton];
    button = (UIButton *)sender;
    [self.view addSubview:viewdate];
    viewdate.hidden=NO;
    [scrolldown bringSubviewToFront:picker];
    [picker bringSubviewToFront:button1];
}
- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker{
    if ([paramDatePicker isEqual:self.picker]){
        NSLog(@"Selected date = %@", paramDatePicker.date);
    NSDateFormatter *dateFormatter1 = [[NSDateFormatter alloc] init];
    [dateFormatter1 setDateStyle:NSDateFormatterFullStyle];
        pickeddate=[dateFormatter1 stringFromDate:paramDatePicker.date];
    }
}

- (void)takedatevalue:(UIButton*)button
{
    viewdate.hidden=YES;

    if((![pickeddate isEqual:@""])&&(pickeddate!=nil))
    {
        [selectdate setTitle:pickeddate forState:UIControlStateNormal];
    }
    else
    {
        [selectdate setTitle:@"Tap to select date" forState:UIControlStateNormal];

    }
//    viewdate.hidden=YES;
}
-(IBAction)selectdoctors:(id)sender
{
    button = (UIButton *)sender;

    arr=nil;
    arr=[[NSArray alloc]initWithObjects:@"Choose Doctor",@"Dr.K.U.Kunjumoideen",@"Dr.Sreeja Sajith",
         @"Dr.Premu Johnson",@"Dr. Aysha Anjuna",
         @"Dr. Saneej K", @"Dr. Kavitha Roshan",@"Dr. Paulose Chally",nil];
    //
    
    [self.tableview reloadData];
    isDrop = NO;
    [self dropDown];

}


#pragma mark -
#pragma mark PickerView Delegate
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
//    float rate = [[exchangeRates objectAtIndex:row] floatValue];
//    float dollars = [dollarText.text floatValue];
//    float result = dollars * rate;
//    
//    NSString *resultString = [[NSString alloc] initWithFormat:
//                              @"%.2f USD = %.2f %@", dollars, result,
//                              [countryNames objectAtIndex:row]];
//    resultLabel.text = resultString;
}
#pragma mark -
#pragma mark PickerView DataSource

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [arr count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return [arr objectAtIndex:row];
}
#pragma mark - UITableView
#pragma mark - datasource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger a=[arr count]-1;
    return a;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *headerView = [[UIView alloc] init];
    UIImageView *tempimage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320,34)];// you can also use image view to show your required color.
    tempimage.image = [UIImage imageNamed:@"header_bg.png"];
    [headerView addSubview:tempimage];
    NSString *str=[NSString stringWithFormat:@"%@",[arr objectAtIndex:0]];
   UILabel *lbl1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 0.0,200.0, 34.0)];
    lbl1.font = [UIFont italicSystemFontOfSize:14.0f];
    [lbl1 setText:str];
    [lbl1 setBackgroundColor:[UIColor clearColor]];
    [lbl1 setTextColor:[UIColor whiteColor]];
    [headerView addSubview:lbl1];
    return  headerView;
    
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *str=[NSString stringWithFormat:@"%@",[arr objectAtIndex:0]];
    return str;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
   
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor cyanColor];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleGray;

    cell.textLabel.text = [NSString stringWithFormat:@"%@",[arr objectAtIndex:indexPath.row+1]];
    cell.textLabel.textColor=[UIColor colorWithRed:163.0/255.0 green:163.0/255.0 blue:163.0/255.0 alpha:255.0/255.0];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{

    [button setTitle:[arr objectAtIndex:indexPath.row+1] forState:UIControlStateNormal];
    if([[arr objectAtIndex:indexPath.row+1] isEqualToString:@"Already consulted ARMC doctors"])
    {
        armcid.hidden=NO;
    }
    else
    {
        armcid.hidden=YES;

    }
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self dropDown];
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
        [txtview becomeFirstResponder];
        return NO;

    } // when user presses return on the email field
    else if (textField == txtview) {
        [txtview resignFirstResponder];
        [cityname becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == cityname) {
        [cityname resignFirstResponder];
        [statename becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == statename) {
        [statename resignFirstResponder];
        [zip becomeFirstResponder];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == zip) {
        [zip resignFirstResponder];
        [countryname becomeFirstResponder];
        float width = scrolldown.frame.size.width;
        float height = scrolldown.frame.size.height;
        float newPosition = 10+height;
        CGRect toVisible = CGRectMake(0, newPosition, width, height);
        
        [scrolldown scrollRectToVisible:toVisible animated:YES];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == countryname) {
        [countryname resignFirstResponder];
        [emailid becomeFirstResponder];
        float width = scrolldown.frame.size.width;
        float height = scrolldown.frame.size.height;
        float newPosition = 20+height;
        CGRect toVisible = CGRectMake(0, newPosition, width, height);
        
        [scrolldown scrollRectToVisible:toVisible animated:YES];
        // here you can define what happens
        // when user presses return on the email field
    }    else if (textField == emailid) {
        [emailid resignFirstResponder];
        [mobno becomeFirstResponder];
        float width = scrolldown.frame.size.width;
        float height = scrolldown.frame.size.height;
        float newPosition = 40+height;
        CGRect toVisible = CGRectMake(0, newPosition, width, height);
        
        [scrolldown scrollRectToVisible:toVisible animated:YES];
        // here you can define what happens
        // when user presses return on the email field
    }
    else if (textField == mobno) {
        [mobno resignFirstResponder];
        float width = scrolldown.frame.size.width;
        float height = scrolldown.frame.size.height;
        float newPosition = 50+height;
        CGRect toVisible = CGRectMake(0, newPosition, width, height);
        
        [scrolldown scrollRectToVisible:toVisible animated:YES];
        // here you can define what happens
        // when user presses return on the email field
    }
    // when user presses return on the email field
    
    
    return YES;
}
-(IBAction)send:(id)sender
{
    NSString *nametext=name.text;
    NSString *emailtext=emailid.text;
    NSString *mobno1=mobno.text;
//    if([nametext isEqualToString:@""])
//    {
//        [scrolldown addSubview:lblstar];
//     }
//    if([mobno1 isEqualToString:@""])
//    {
//        [scrolldown addSubview:lblstar1];
//    }

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

    if (([name.text isEqualToString:@""])||([age.titleLabel.text isEqualToString:@""])||([gender.titleLabel.text isEqualToString:@""])||([txtview.text isEqualToString:@""])||([cityname.text isEqualToString:@""])||([statename.text isEqualToString:@""])||([countryname.text isEqualToString:@""])||([emailid.text isEqualToString:@""])||([mobno.text isEqualToString:@""])||([prfdoc.titleLabel.text isEqualToString:@""])||([selectdate.titleLabel.text isEqualToString:@""])||([patmode.titleLabel.text isEqualToString:@""])||([zip.text isEqualToString:@""])) {
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
        NSString *messageBody = [NSString stringWithFormat:@"Name : %@\nAge : %@\nGender : %@\n Address: %@\n City: %@\n State: %@\n ZipCode: %@\n Country: %@\n EmailId :%@\n Mobile: %@\n SelectedDoctor: %@\n AppointmentDate: %@\n PatientMode: %@",name.text,age.titleLabel.text,gender.titleLabel.text,txtview.text,cityname.text,statename.text,zip.text,countryname.text,emailid.text,mobno.text,prfdoc.titleLabel.text,selectdate.titleLabel.text,patmode.titleLabel.text];
        // To address
        NSArray *toRecipents = [NSArray arrayWithObject:@"info@armcivf.net"];
        
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
