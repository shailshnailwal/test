//
//  PDfViewer.h
//  Projectapp
//
//  Created by Enuke New Mac on 04/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDfViewer : UIViewController<UIWebViewDelegate>
{
    int index;
    NSArray *myData1;
    IBOutlet UILabel *lbl;
    IBOutlet UILabel *toplabel;
    UIWebView *webView;
}
@property(assign)int index;
@property(nonatomic,strong)NSArray *myData1;
@property(nonatomic,strong)IBOutlet UILabel *lbl;
@property(nonatomic,strong)IBOutlet UILabel *toplabel;
@property(nonatomic,strong)UIWebView *webView;
-(IBAction)goback:(id)sender;

@end
