//
//  TwoWheeler.h
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import "Moter.h"

@interface TwoWheeler : Moter
{
    Boolean _isSelfStart;
}

-(id) initTwoWheeler : (NSString *) inputCompanyName : (NSString *) inputModelName : (Boolean) inputIsSelfStart;
-(void) setTwoWheelerValues : (NSString *) inputCompanyName : (NSString *) inputModelName : (Boolean) inputIsSelfStart;
-(void) showTwoWheelerValues;
@end
