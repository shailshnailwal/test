//
//  Moter.m
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import "Moter.h"

@implementation Moter

-(id)initMoter: (NSString *) inputCompanyName : (NSString *) inputModelName
{
    self = [super init];
    _companyName = inputCompanyName;
    _modelName = inputModelName;
    return self;
}

-(void) setModelValues : (NSString *) inputCompanyName : (NSString *) inputModelName;
{
    _companyName = inputCompanyName;
    _modelName = inputModelName;
}

-(void) showModelValues;
{
    NSLog(@"\nCompany : %@",_companyName);
    NSLog(@"\nModel : %@",_modelName);
}
@end
