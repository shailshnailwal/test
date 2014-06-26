//
//  Locationdesc.h
//  Projectapp
//
//  Created by Enuke New Mac on 04/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface Locationdesc : UIViewController
{
    IBOutlet UILabel *lbl;
    IBOutlet UILabel *locationnamelbl;
    IBOutlet UIImageView *descLocationimgview;
    IBOutlet UILabel *locationnamelbltop;
    IBOutlet UIButton *btnclose;
    NSMutableArray *myDatalocation;
    int index;
    GMSMapView *mapView_;
    NSArray *locationlat;
    NSArray *locationlog;
    NSMutableArray *locarr;
    IBOutlet UIButton *workbtn;
    IBOutlet UIButton *mapbtn;

}
@property(nonatomic,retain) IBOutlet UILabel *lbl;
@property(nonatomic,retain) NSMutableArray *myDatalocation;
@property(nonatomic,retain)IBOutlet UILabel *locationnamelbl;
@property(nonatomic,retain) IBOutlet UIImageView *descLocationimgview;
@property(nonatomic,retain)IBOutlet UILabel *locationnamelbltop;
@property(nonatomic,retain)GMSMapView *mapView_;
@property(nonatomic,retain)IBOutlet UIButton *btnclose;
@property(nonatomic,retain)NSArray *locationlat;
@property(nonatomic,retain)NSArray *locationlog;
@property(nonatomic,retain) NSMutableArray *locarr;
@property(nonatomic,retain)  IBOutlet UIButton *workbtn;
@property(nonatomic,retain)  IBOutlet UIButton *mapbtn;

@property(assign) int index;
-(IBAction)goback:(id)sender;
-(IBAction)mapopen:(id)sender;
-(IBAction)mapclose:(id)sender;
-(IBAction)openworkinghour:(id)sender;

@end
