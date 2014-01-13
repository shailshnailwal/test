//
//  FourWheeler.h
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import "Moter.h"

@interface FourWheeler : Moter
{
    int _numberOfSeats;
}

-(id) initFourWheeler : (NSString *) inputCompanyName : (NSString *) inputModelName : (int) inputNumberOfSeats;
-(void)setFourWheelerValues : (NSString *) inputCompanyName : (NSString *) inputModelName : (int) inputNumberOfSeats;
-(void) showFourWheelerValues;


@end
