//
//  TapViewController.m
//  Projectapp
//
//  Created by Enuke New Mac on 26/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "TapViewController.h"
#import "MyScrollView.h"
#import "AsyncImageView.h"

@interface TapViewController ()
@property(nonatomic,strong)IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet MyScrollView *myScroll;
@property (weak, nonatomic) IBOutlet UIToolbar *myToolbar;

@end

@implementation TapViewController
{
    BOOL _oldBounces;
    

}
@synthesize label;

- (id)initWithImages:(NSArray *)images WithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil idx:(int)indx andMode:(int)modes
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        index=indx;
        mode=modes;
        self.images = images;
//        self.title =[NSString stringWithFormat:@"%d of %d",index+1,(int)self.images.count+1];
        
    }
    return self;
}

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
    
    label.text=@"Image";

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
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [titleLabel setTitle:@"Image" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
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
    // Do any additional setup after loading the view from its nib.
}
-(void)viewDidAppear:(BOOL)animated{
    if (mode==mLoadStaticImages)
        gImage=self.images[index];
    else
    {
        AsyncImageView *a=self.images[index];
        a.delegate=self;
        UIImageView *i=(UIImageView*)[a viewWithTag:203];
        gImage=i.image;
        self.imageView.image=i.image;
        
    }
    
    [self loadView:gImage];
}
-(IBAction)goback:(id)sender
 {
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
-(void)getSyncImage:(UIImage *)image
{
    UIImageView *i3=(UIImageView*)[self.view viewWithTag:21];
    i3.image=image;
    [self loadView:image];
    
}
-(void)loadView:(UIImage *)image {
    //  UIScrollView* sv = [[MyScrollView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    //   self.view=sv;
    //  sv.backgroundColor = [UIColor blackColor];
    
    // UIImageView* iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bird.jpg"]];
    self.myToolbar.hidden=FALSE;
    
    [self.myScroll.subviews makeObjectsPerformSelector: @selector(removeFromSuperview)];
    UIImageView *iv = [[UIImageView alloc] initWithImage:image];
    iv.tag = 999;
    [self.myScroll addSubview:iv];
    self.myScroll.contentSize = iv.bounds.size;
    
    UITapGestureRecognizer* t = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                        action:@selector(tapped:)];
    t.numberOfTapsRequired = 2;
    [iv addGestureRecognizer:t];
    iv.userInteractionEnabled = YES;
    
    // feel free to play with these numbers
    self.myScroll.maximumZoomScale = 3;
    self.myScroll.minimumZoomScale = 0.5;
    self.myScroll.delegate = self;
    // CGPoint pt = CGPointMake((iv.bounds.size.width - self.myScroll.bounds.size.width)/2.0,0);
    // [self.myScroll setContentOffset:pt animated:NO];
    self.myScroll.bouncesZoom = NO; // try it with YES, but I like this better
    // [ self.myScroll setZoomScale:1 animated:YES];
    
}

- (void) scrollViewWillBeginZooming:(UIScrollView *)scrollView
                           withView:(UIView *)view {
    self->_oldBounces = scrollView.bounces;
    scrollView.bounces = NO; // again, you can comment this out, but I like the result better
}

- (void) scrollViewDidEndZooming:(UIScrollView *)scrollView
                        withView:(UIView *)view atScale:(float)scale {
    scrollView.bounces = self->_oldBounces;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return [scrollView viewWithTag:999];
}

// the picture is also zoomable by double-tapping

- (void) tapped: (UIGestureRecognizer*) tap {
    UIView* v = tap.view;
    
    UIScrollView* sv = (UIScrollView*)v.superview;
    if (sv.zoomScale < 1) {
        [sv setZoomScale:1 animated:YES];
        CGPoint pt = CGPointMake((v.bounds.size.width - sv.bounds.size.width)/2.0,0);
        [sv setContentOffset:pt animated:NO];
    }
    else if (sv.zoomScale < sv.maximumZoomScale){
        [sv setZoomScale:sv.maximumZoomScale animated:YES];
        CGRect frm=sv.frame;
        frm.size.height+=self.myToolbar.frame.size.height;
        sv.frame=frm;
        self.myToolbar.hidden=TRUE;
    }
    else
    {   [sv setZoomScale:sv.minimumZoomScale animated:YES];
        self.myToolbar.hidden=FALSE;
        CGRect frm=sv.frame;
        frm.size.height-=self.myToolbar.frame.size.height;
        sv.frame=frm;
    }
    
}





-(void)deviceOrientationChange
{
    
}

-(IBAction)gotoNext:(id)sender
{
    if (index<[self.images count]-1)
    {
        index++;
        self.title =[NSString stringWithFormat:@"%d of %d",index+1,(int)self.images.count+1];
        // self.imageView.image=self.images[index];
        if (mode==mLoadStaticImages)
            gImage=self.images[index];
        else
        {
            AsyncImageView *a=self.images[index];
            UIImageView *i=(UIImageView*)[a viewWithTag:203];
            gImage=i.image;
            self.imageView.image=i.image;
            
        }
        [self loadView:gImage];
        [self slideNext:self.myScroll];
    }
}
-(IBAction)gotoPrev:(id)sender
{
    
    if (index>0)
    {
        index--;
        self.title =[NSString stringWithFormat:@"%d of %d",index+1,(int)self.images.count+1];
        // self.imageView.image=self.images[index];
        if (mode==mLoadStaticImages)
            gImage=self.images[index];
        else
        {
            AsyncImageView *a=self.images[index];
            UIImageView *i=(UIImageView*)[a viewWithTag:203];
            gImage=i.image;
            self.imageView.image=i.image;
            
        }
        
        [self loadView:gImage];
        [self slidePrev:self.myScroll];
    }
    
}


-(void)slideNext:(UIView *)view
{
    
    
    CGRect or=view.frame;
    
    CGRect basketTopFrame = view.frame;
    basketTopFrame.origin.x =  basketTopFrame.size.width;
    view.frame = basketTopFrame;
    
    [UIView animateWithDuration:0.2
                          delay:0.0
                        options:UIViewAnimationOptionTransitionCurlUp
                     animations:^{
                         view.frame=or;
                         // basketBottom.frame = basketBottomFrame;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"Done!");
                     }];
}


-(void)slidePrev:(UIView *)view
{
    CGRect or=view.frame;
    
    CGRect basketTopFrame = view.frame;
    basketTopFrame.origin.x = -( basketTopFrame.size.width);
    view.frame = basketTopFrame;
    
    [UIView animateWithDuration:0.2
                          delay:0.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         view.frame=or;
                         // basketBottom.frame = basketBottomFrame;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"Done!");
                     }];
}

-(IBAction)imageShare:(id)sender
{
    UIImage *imageToShare = ((UIImageView*)[self.myScroll viewWithTag:999]).image;
    NSArray *activityItems = @[ imageToShare];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:activityItems applicationActivities:nil];
    activityViewController.excludedActivityTypes=@[UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,UIActivityTypePostToWeibo,UIActivityTypePrint,UIActivityTypeSaveToCameraRoll];
    [self presentViewController:activityViewController animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
