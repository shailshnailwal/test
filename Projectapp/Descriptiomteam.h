//
//  Descriptiomteam.h
//  Projectapp
//
//  Created by Enuke New Mac on 06/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Descriptiomteam : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *tblview;
    NSMutableArray *_sqliteData;
    IBOutlet UILabel *labeltop;
    int indexselect;

}
@property(nonatomic,strong)IBOutlet UITableView *tblview;
@property(nonatomic,strong) NSMutableArray *_sqliteData;
@property(nonatomic,strong) IBOutlet UILabel *labeltop;
@property(nonatomic,assign)int indexselect;

-(IBAction)goback:(id)sender;

@end
