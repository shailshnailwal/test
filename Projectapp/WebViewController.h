//
//  WebViewController.h
//  Projectapp
//
//  Created by Enuke New Mac on 11/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
{
    IBOutlet UIWebView *wb;
    IBOutlet UILabel *lbl;
    int index1;
}
@property(nonatomic,strong) IBOutlet UIWebView *wb;
@property(nonatomic,strong) IBOutlet UILabel *lbl;
@property(nonatomic,assign)int index1;
-(IBAction)goback:(id)sender;

@end
