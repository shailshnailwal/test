//
//  FourWheeler.m
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import "FourWheeler.h"

@implementation FourWheeler

-(id) initFourWheeler : (NSString *) inputCompanyName : (NSString *) inputModelName : (int) inputNumberOfSeats
{
    self = [super initMoter: inputCompanyName : inputModelName];
    _numberOfSeats = inputNumberOfSeats;
    return self;
}

-(void)setFourWheelerValues : (NSString *) inputCompanyName : (NSString *) inputModelName : (int) inputNumberOfSeats
{
    [super setModelValues : inputCompanyName : inputModelName];
    _numberOfSeats = inputNumberOfSeats;
}

-(void) showFourWheelerValues
{
    [super showModelValues];
    NSLog(@"It is %d seater car",_numberOfSeats);
}
@end
