//
//  Moter.h
//  AutoMobile
//
//  Created by Shailsh Naiwal on 25/01/13.
//  Copyright (c) 2013 Shailsh Naiwal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Moter : NSObject
{
    @protected
        NSString * _companyName;
        NSString * _modelName;
}

-(id)initMoter: (NSString *) inputCompanyName : (NSString *) inputModelName;
-(void) setModelValues : (NSString *) inputCompanyName : (NSString *) inputModelName;
-(void) showModelValues;

@end
