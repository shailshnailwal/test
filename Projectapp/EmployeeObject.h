//
//  EmployeeObject.h
//  Projectapp
//
//  Created by Enuke New Mac on 07/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmployeeObject : NSObject
{
    NSString *LocationName;
    NSString *EmpName;
    NSString *EmpImage;
    NSString *EmpDesignation;
    NSString *EmpDescription;
    NSString *EmpViewDetails;

}
@property(nonatomic,retain) NSString *LocationName;
@property(nonatomic,retain) NSString *EmpName;
@property(nonatomic,retain) NSString *EmpImage;
@property(nonatomic,retain) NSString *EmpDesignation;
@property(nonatomic,retain) NSString *EmpDescription;
@property(nonatomic,retain) NSString *EmpViewDetails;

@end
