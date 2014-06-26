//
//  TermsView.h
//  Projectapp
//
//  Created by Enuke New Mac on 21/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TermsView : UIViewController
{
IBOutlet UIButton *agrbtn;
}
@property(nonatomic,retain)IBOutlet UIButton *agrbtn;
-(IBAction)agree:(id)sender;
@end
