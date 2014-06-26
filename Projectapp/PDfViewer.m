//
//  PDfViewer.m
//  Projectapp
//
//  Created by Enuke New Mac on 04/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "PDfViewer.h"

@interface PDfViewer ()

@end

@implementation PDfViewer
@synthesize index,myData1,lbl,toplabel,webView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
webView = [[UIWebView alloc] initWithFrame:CGRectMake(8, 60, 320, 540)];
     myData1=[[NSArray alloc]initWithObjects:@"general_instructions",@"Instructions_for_semen_analysis",@"Instructions_for_IVF_ICSI",@"instructions_for_embryo_transfer1",@"Instructions_for_IUI",@"Instructions_for_vaginal_scanning",@"Patient",nil];
    NSArray *myData=[[NSArray alloc]initWithObjects:@"General Instructions for couples",@"Instructions for semen analysis",@"Instruction for IVF-ICSI",@"Instructions for embryo transfer",@"Instructions for patients undergoing IUI",@"Instructions for female pelvic scanning",@"Open and download complete instructions",nil];
if(index==99)
{
    toplabel.text=@"News letter";

    NSString *path = [[NSBundle mainBundle] pathForResource:@"news_letter" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
    webView.scalesPageToFit=YES;
    webView.delegate=self;
    [self.view addSubview:webView];

}
    else if(index!=6)
    {
        toplabel.text=@"Information Details";
//        NSString *path1 =   [ [ NSBundle mainBundle ] pathForResource: @"style" ofType: @"css" ];
//        NSURL *baseURL = [NSURL fileURLWithPath:path1];
//
//        NSMutableString *pageStr;
//[pageStr appendString:@"<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n"];    NSString *path = [[NSBundle mainBundle] pathForResource:[myData1 objectAtIndex:index] ofType:@"html"];
//    NSURL *targetURL = [NSURL fileURLWithPath:path];
//    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
//    [webView loadRequest:request];
//NSString *path = [[NSBundle mainBundle] pathForResource:[myData1 objectAtIndex:index] ofType:@"html"];        NSURL *baseURL = [NSURL fileURLWithPath:path];
//        [webView loadHTMLString:@"Instructions_for_semen_analysis.html" baseURL:baseURL];
//        [webView loadHTMLString:@"Instructions_for_semen_analysis.html" baseURL:baseURL];
//        [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[myData1 objectAtIndex:index] ofType:@"html"]isDirectory:NO]]];
        NSString *pathToiOSCss1 = [[NSBundle mainBundle] pathForResource:[myData1 objectAtIndex:index] ofType:@"html"];
        NSString *iOSCssData1 = [NSString stringWithContentsOfFile:pathToiOSCss1 encoding:NSUTF8StringEncoding error:NULL];
//        NSString *pathToiOSCss = [[NSBundle mainBundle] pathForResource:@"style" ofType:@"css"];
//        NSString *iOSCssData = [NSString stringWithContentsOfFile:pathToiOSCss encoding:NSUTF8StringEncoding error:NULL];
//        NSString *extraHeadTags = [NSString stringWithFormat:@"<style>%@</style></head>", iOSCssData];
//       NSString *html = [iOSCssData1 stringByReplacingOccurrencesOfString:@"</head>" withString:extraHeadTags];
//        
//        [webView loadHTMLString:html baseURL:nil];
        NSData *data = [iOSCssData1 dataUsingEncoding:NSUTF8StringEncoding];
        [webView loadData:data MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
    webView.scalesPageToFit=YES;
    webView.delegate=self;

    [self.view addSubview:webView];

//        [webView loadRequest:[NSURLRequest requestWithURL: [NSURL fileURLWithPath:path1 isDirectory:NO]]];
    }
    else
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Patient" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webView loadRequest:request];
        webView.scalesPageToFit=YES;
        webView.delegate=self;
        [self.view addSubview:webView];
    }

    // Do any additional setup after loading the view from its nib.
}
- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    webView.scrollView.delegate = self; // set delegate method of UISrollView
    webView.scrollView.maximumZoomScale = 20; // set as you want.
    webView.scrollView.minimumZoomScale = 1; // set as you want.
    
    //// Below two line is for iOS 6, If your app only supported iOS 7 then no need to write this.
    webView.scrollView.zoomScale = 2;
    webView.scrollView.zoomScale = 1;
}

#pragma mark -
#pragma mark - UIScrollView Delegate Methods

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale
{
    webView.scrollView.maximumZoomScale = 20; // set similar to previous.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
