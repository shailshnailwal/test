//
//  Teamcellview.h
//  Projectapp
//
//  Created by Enuke New Mac on 09/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeObject.h"

@interface Teamcellview : UITableViewCell
{
    
}

- (id)initWithData:(id)aData reuseIdentifier:(NSString *)reuseIdentifier object:(EmployeeObject*)emp;

@end
