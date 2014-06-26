//
//  InformationViewController.m
//  Projectapp
//
//  Created by Enuke New Mac on 03/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "InformationViewController.h"
#import "PDfViewer.h"
@interface InformationViewController ()

@end

@implementation InformationViewController
@synthesize tblview,myData,label,myData1;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [myData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *stringForCell;
    if (indexPath.section == 0) {
        stringForCell= [myData objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
        
    }
    [cell.textLabel setText:stringForCell];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"category_list_bg.png"] drawInRect:CGRectMake(0, 0, 295, 45)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
    cell.textLabel.font=[UIFont fontWithName:@"" size:10];
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
//(NSInteger)section{
//    NSString *headerTitle;
//    if (section==0) {
//        headerTitle = @"Section 1 Header";
//    }
//    else{
//        headerTitle = @"Section 2 Header";
//
//    }
//    return headerTitle;
//}
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
//(NSInteger)section{
//    NSString *footerTitle;
//    if (section==0) {
//        footerTitle = @"Section 1 Footer";
//    }//    else{
//        footerTitle = @"Section 2 Footer";
//
//    }
//    return footerTitle;
//}

#pragma mark - TableView delegate
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if(indexPath.row!=6)
    {
    PDfViewer *root=[[PDfViewer alloc]initWithNibName:@"PDfViewer" bundle:nil];
    root.index=indexPath.row;

    [self.navigationController pushViewController:root animated:NO];
    }
    else
    {
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Pdf file is downloaded in DocumentDirectory.Click Open Button to see the information"] delegate:self cancelButtonTitle:NSLocalizedString(@"Open", @"OK Button text") otherButtonTitles:@"Cancel",nil];
        [al show];
    }
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle=[alertView buttonTitleAtIndex:buttonIndex];
    if([buttonTitle isEqualToString:@"Open"]) {
        PDfViewer *root=[[PDfViewer alloc]initWithNibName:@"PDfViewer" bundle:nil];
        root.index=6;
        [self.navigationController pushViewController:root animated:NO];
    }
    else if([buttonTitle isEqualToString:@"Cancel"]) {
        myData1=[[NSArray alloc]initWithObjects:@"General",@"semen",@"ivf",@"embro",@"iui",@"scan",@"Patient",nil];

        NSString *path = [[NSBundle mainBundle] pathForResource:[myData1 objectAtIndex:6] ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSData *data = [NSData dataWithContentsOfURL:targetURL];

        NSString *documentsDirectory = [NSString stringWithFormat:@"%@/Pdffiles",[self applicationDocumentsDirectory]];
        NSFileManager *filemanager=[[NSFileManager alloc] init];
        if (![filemanager fileExistsAtPath:documentsDirectory]) {
            [filemanager createDirectoryAtPath:documentsDirectory withIntermediateDirectories:NO attributes:nil error:nil];
        }
        
        NSString *audioFile = [[NSString alloc] initWithString:[NSString stringWithFormat:@"Patient_info.pdf"]];
        NSString *tmpPathToFile = [NSString stringWithFormat:@"%@/%@", documentsDirectory,audioFile];
        
        if([data writeToFile:tmpPathToFile atomically:YES]){
            //Write was successful.
        }
        

    }
}

- (NSString *)applicationDocumentsDirectory {
	
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     label.text=@"Information";
    [tblview setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];

    myData=[[NSArray alloc]initWithObjects:@"General Instructions for couples",@"Instructions for semen analysis",@"Instruction for IVF-ICSI",@"Instructions for embryo transfer",@"Instructions for patients undergoing IUI",@"Instructions for female pelvic scanning",@"Open and download complete instructions",nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
