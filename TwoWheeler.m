//
//  TwoWheeler.m
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import "TwoWheeler.h"

@implementation TwoWheeler

-(id) initTwoWheeler : (NSString *) inputCompanyName : (NSString *) inputModelName : (Boolean) inputIsSelfStart
{
    self = [super initMoter: inputCompanyName : inputModelName];
    
    
    _isSelfStart = inputIsSelfStart;
    return self;
}


-(void) setTwoWheelerValues : (NSString *) inputCompanyName : (NSString *) inputModelName : (Boolean) inputIsSelfStart;
{
    [super setModelValues : inputCompanyName : inputModelName];
    _isSelfStart = inputIsSelfStart;
}

-(void) showTwoWheelerValues;
{
    [super showModelValues];
    if(_isSelfStart)
    {
        NSLog(@"\nIt is self start");
    }
    else
    {
        NSLog(@"\nIt is not self start");
    }
}
@end
