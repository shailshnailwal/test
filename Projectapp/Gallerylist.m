//
//  Gallerylist.m
//  Projectapp
//
//  Created by Enuke New Mac on 23/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Gallerylist.h"
#import "AsyncImageView.h"
#import "TapViewController.h"
static CGSize CGSizeResizeToHeight(CGSize size, CGFloat height) {
    size.width *= height / size.height;
    size.height = height;
    return size;
}

@interface Gallerylist ()
@property (strong, nonatomic)NSURL *url;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activity;
- (void)placeImages;
- (void)setFramesToWebImageViews:(NSMutableArray *)imageViews toFitSize:(CGSize)frameSize;
- (CGSize)setFramesToImageViews:(NSArray *)imageViews toFitSize:(CGSize)frameSize;
- (void)deviceOrientationChange;
@end


@implementation Gallerylist
@synthesize strlabel;
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
     label.text=strlabel;
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
//    [titleLabel setTitle:strlabel forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentLeft;
//
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(20,-15, 140, 20);
//    
//    
//    
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//    self.navigationController.navigationBar.hidden=NO;
    NSString *str=nil;

    if([strlabel isEqualToString:@"Laboratory"])
    {
        str=@"l-";
    }
    else if([strlabel isEqualToString:@"Pharmacy"])
    {
        str=@"p-";

    }
    else if([strlabel isEqualToString:@"Office"])
    {
        str=@"f-";

    }else if([strlabel isEqualToString:@"Annual Day"])
    {
        str=@"a-";

    }
    else if([strlabel isEqualToString:@"Suits"])
    {
        str=@"b-";
   
    }
    else if([strlabel isEqualToString:@"IVF"])
    {
        str=@"i-";

    }
    else if([strlabel isEqualToString:@"Ingurations"])
    {
        str=@"n-";

    }
    else if([strlabel isEqualToString:@"OT"])
    {
        str=@"o-";

    }
    else if([strlabel isEqualToString:@"Camps and Seminars"])
    {
        str=@"c-";

    }
    else if([strlabel isEqualToString:@"anniversary"])
    {
        str=@"v-";

    }
 
    self.images=[NSMutableArray array];
    NSMutableArray *result = [NSMutableArray array];
    
    [[[NSBundle mainBundle] pathsForResourcesOfType:@"jpg" inDirectory:nil] enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        NSString *path = [obj lastPathComponent];
        if ([path hasPrefix:str]) {
            [result addObject:path];
        }
    }];
    for (int i = 0; i <[result count]; i++) {
        NSString *fileName = [result objectAtIndex:i];
        [self.images addObject:[UIImage imageNamed:fileName]];
    }
//    for (int i = 0; i <= 15; i++) {
//        [self.images exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform(15)];
//    }
    NSLog(@"%@",self.images);
    if (mode==mLoadStaticImages)
        self.title=@"Static Images";
    else
        self.title=@"Web Images";
    
    [self.contentView setBackgroundColor:[UIColor grayColor]];
    
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.contentView];
    self.activity.hidden=NO;
    self.contentView.alpha=0.2;
    
    [self placeImages];
    
    self.activity.hidden=YES;
    self.contentView.alpha=1;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(deviceOrientationChange)
                                                 name:UIDeviceOrientationDidChangeNotification object:nil];
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}
#pragma mark
- (void) myTapMethod:(UIGestureRecognizer *)sender
{
    TapViewController *d=[[TapViewController alloc]initWithImages:self.images WithNibName:@"TapViewController" bundle:nil idx:(int)sender.view.tag andMode:mode];
    [self.navigationController pushViewController:d animated:NO];
}
-(void)viewWillAppear:(BOOL)animated
{
    [self placeImages];
    
}
- (void)deviceOrientationChange {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(placeImages) object:nil];
    [self performSelector:@selector(placeImages) withObject:nil afterDelay:1];
}
- (void)placeImages
{
    [self.contentView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    if (mode==mLoadWebImages)
    {
        NSMutableArray *imageViews = [NSMutableArray array];
        for (int i = 0; i < self.images.count; i++)
        {
            float w =   arc4random_uniform(101) + 100;
            float h =   arc4random_uniform(201) + 100;
            CGSize cg=CGSizeMake(w, h);
            [imageViews addObject:[NSValue valueWithCGSize:cg]];
        }
        
        [self setFramesToWebImageViews:imageViews toFitSize:self.contentView.frame.size];
        for (int j=0; j<imageViews.count; j++)
        {
            NSValue *v=imageViews[j];
            
            AsyncImageView *a=[[AsyncImageView alloc]initWithFrame:[v CGRectValue]];
            [a setBackgroundColor:[UIColor whiteColor]];
            NSURL *u=[self.images objectAtIndex:j];
            [a loadImageFromURL:u];
            a.userInteractionEnabled=YES;
            a.tag=j;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myTapMethodAsync:)];
            [tap setNumberOfTouchesRequired:1];
            [tap setNumberOfTapsRequired:1];
            [a addGestureRecognizer:tap];
            [self.contentView addSubview:a];
        }
        
    }
    else
    {
        NSMutableArray *imageViews = [NSMutableArray array];
        for (UIImage *image in self.images) {
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            [imageViews addObject:imageView];
        }
        
        CGSize newSize = [self setFramesToImageViews:imageViews toFitSize:self.contentView.frame.size];
        self.contentView.contentSize = newSize;
        int i=0;
        for (UIImageView *iimageView in imageViews)
        {
            iimageView.userInteractionEnabled=YES;
            iimageView.tag=i;
            i++;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myTapMethod:)];
            [tap setNumberOfTouchesRequired:1];
            [tap setNumberOfTapsRequired:1];
            [iimageView addGestureRecognizer:tap];
            [self.contentView addSubview:iimageView];
        }
        
    }
    
}
- (CGSize)setFramesToImageViews:(NSArray *)imageViews toFitSize:(CGSize)frameSize {
    /**
     Linear Partition
     */
    int N = (int)imageViews.count;
    CGRect newFrames[N];
    float ideal_height = MAX(frameSize.height, frameSize.width) /3.5;
    float seq[N];
    float total_width = 0;
    for (int i = 0; i < imageViews.count; i++) {
        UIImage *image = [[imageViews objectAtIndex:i] image];
        CGSize newSize = CGSizeResizeToHeight(image.size, ideal_height);
        newFrames[i] = (CGRect) {{0, 0}, newSize};
        seq[i] = newSize.width;
        total_width += seq[i];
    }
    
    int K = (int)roundf(total_width / frameSize.width);
    
    float M[N][K];
    float D[N][K];
    
    for (int i = 0 ; i < N; i++)
        for (int j = 0; j < K; j++)
            D[i][j] = 0;
    
    for (int i = 0; i < K; i++)
        M[0][i] = seq[0];
    
    for (int i = 0; i < N; i++)
        M[i][0] = seq[i] + (i ? M[i-1][0] : 0);
    
    float cost;
    for (int i = 1; i < N; i++) {
        for (int j = 1; j < K; j++) {
            M[i][j] = INT_MAX;
            
            for (int k = 0; k < i; k++) {
                cost = MAX(M[k][j-1], M[i][0]-M[k][0]);
                if (M[i][j] > cost) {
                    M[i][j] = cost;
                    D[i][j] = k;
                }
            }
        }
    }
    
    /**
     Ranges & Resizes
     */
    int k1 = K-1;
    int n1 = N-1;
    int ranges[N][2];
    while (k1 >= 0) {
        ranges[k1][0] = D[n1][k1]+1;
        ranges[k1][1] = n1;
        
        n1 = D[n1][k1];
        k1--;
    }
    ranges[0][0] = 0;
    
    float cellDistance = 5;
    float heightOffset = cellDistance, widthOffset;
    float frameWidth;
    for (int i = 0; i < K; i++) {
        float rowWidth = 0;
        frameWidth = frameSize.width - ((ranges[i][1] - ranges[i][0]) + 2) * cellDistance;
        
        for (int j = ranges[i][0]; j <= ranges[i][1]; j++) {
            rowWidth += newFrames[j].size.width;
        }
        
        float ratio = frameWidth / rowWidth;
        widthOffset = 0;
        
        for (int j = ranges[i][0]; j <= ranges[i][1]; j++) {
            newFrames[j].size.width *= ratio;
            newFrames[j].size.height *= ratio;
            newFrames[j].origin.x = widthOffset + (j - (ranges[i][0]) + 1) * cellDistance;
            newFrames[j].origin.y = heightOffset;
            
            widthOffset += newFrames[j].size.width;
        }
        heightOffset += newFrames[ranges[i][0]].size.height + cellDistance;
    }
    
    for (int i = 0; i < N; i++) {
        UIImageView *imgView = imageViews[i];
        imgView.frame = newFrames[i];
        [self.contentView addSubview:imgView];
    }
    
    return CGSizeMake(frameSize.width, heightOffset);
}

- (void)setFramesToWebImageViews:(NSMutableArray *)imageViews toFitSize:(CGSize)frameSize {
    /**
     Linear Partition
     */
    int N = (int)imageViews.count;
    CGRect newFrames[N];
    float ideal_height = MAX(frameSize.height, frameSize.width) /3.5;
    float seq[N];
    float total_width = 0;
    for (int i = 0; i < imageViews.count; i++) {
        //   UIImage *image = [[imageViews objectAtIndex:i] image];
        NSValue *v=imageViews[i];
        CGSize newSize = CGSizeResizeToHeight([v CGSizeValue], ideal_height);
        newFrames[i] = (CGRect) {{0, 0}, newSize};
        seq[i] = newSize.width;
        total_width += seq[i];
    }
    
    int K = (int)roundf(total_width / frameSize.width);
    
    float M[N][K];
    float D[N][K];
    
    for (int i = 0 ; i < N; i++)
        for (int j = 0; j < K; j++)
            D[i][j] = 0;
    
    for (int i = 0; i < K; i++)
        M[0][i] = seq[0];
    
    for (int i = 0; i < N; i++)
        M[i][0] = seq[i] + (i ? M[i-1][0] : 0);
    
    float cost;
    for (int i = 1; i < N; i++) {
        for (int j = 1; j < K; j++) {
            M[i][j] = INT_MAX;
            
            for (int k = 0; k < i; k++) {
                cost = MAX(M[k][j-1], M[i][0]-M[k][0]);
                if (M[i][j] > cost) {
                    M[i][j] = cost;
                    D[i][j] = k;
                }
            }
        }
    }
    
    /**
     Ranges & Resizes
     */
    int k1 = K-1;
    int n1 = N-1;
    int ranges[N][2];
    while (k1 >= 0) {
        ranges[k1][0] = D[n1][k1]+1;
        ranges[k1][1] = n1;
        
        n1 = D[n1][k1];
        k1--;
    }
    ranges[0][0] = 0;
    
    float cellDistance = 5;
    float heightOffset = cellDistance, widthOffset;
    float frameWidth;
    for (int i = 0; i < K; i++) {
        float rowWidth = 0;
        frameWidth = frameSize.width - ((ranges[i][1] - ranges[i][0]) + 2) * cellDistance;
        
        for (int j = ranges[i][0]; j <= ranges[i][1]; j++) {
            rowWidth += newFrames[j].size.width;
        }
        
        float ratio = frameWidth / rowWidth;
        widthOffset = 0;
        
        for (int j = ranges[i][0]; j <= ranges[i][1]; j++) {
            newFrames[j].size.width *= ratio;
            newFrames[j].size.height *= ratio;
            newFrames[j].origin.x = widthOffset + (j - (ranges[i][0]) + 1) * cellDistance;
            newFrames[j].origin.y = heightOffset;
            
            widthOffset += newFrames[j].size.width;
        }
        heightOffset += newFrames[ranges[i][0]].size.height + cellDistance;
    }
    
    [imageViews removeAllObjects];
    for (int i = 0; i < N; i++)
    {
        CGRect cg=newFrames[i];
        [imageViews addObject:[NSValue valueWithCGRect:cg]];
        
    }
    self.contentView.contentSize =CGSizeMake(frameSize.width, heightOffset);
}
-(IBAction)goback:(id)sender
 {
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
