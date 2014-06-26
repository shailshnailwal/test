//
//  Teamcellview.m
//  Projectapp
//
//  Created by Enuke New Mac on 09/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Teamcellview.h"
#import <sqlite3.h>

@implementation Teamcellview

- (id)initWithData:(id)aData reuseIdentifier:(NSString *)reuseIdentifier object:(EmployeeObject*)emp{
	
	if ((self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier])) {
        
        //    if (indexPath.section == 0) {
        //        stringForCell= [myData objectAtIndex:indexPath.row];
        //
        //    }
        //    else if (indexPath.section == 1){
        //        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
        //
        //    }
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"txt_bg.png"] drawInRect:CGRectMake(0, 0, 295, 80)];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor=[UIColor colorWithPatternImage:image];
        self.textLabel.textColor=[UIColor whiteColor];
        UIImage *image11 = [UIImage imageNamed:@"team-pic-holder.png"];
        
        UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image11];
        imageView1.frame = CGRectMake(0,0, 100,100);
        [self.contentView addSubview:imageView1];
        
        UIImage *image1 = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",emp.EmpImage]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
        imageView.frame = CGRectMake(10,8, 80,80);
        [self.contentView addSubview:imageView];
        
        
        UIImageView *imageView11 = [[UIImageView alloc] init];
        imageView11.backgroundColor=[UIColor colorWithRed:233.0/255.0 green:233.0/255.0 blue:233.0/255.0 alpha:255.0/255.0];
        imageView11.frame = CGRectMake(10,8, 5,5);
        [self.contentView addSubview:imageView11];
        
        UIFont * customFont = [UIFont fontWithName:@"Arial" size:15]; //custom font
        NSString * text = @"Hands on Workshop CME for doctors";
        
        CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(200, 50) lineBreakMode:NSLineBreakByTruncatingTail];
        
        UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(105, 9, labelSize.width, labelSize.height)];
        fromLabel.text = [NSString stringWithFormat:@"%@",emp.EmpName];
        fromLabel.font = customFont;
        fromLabel.numberOfLines = 2;
        fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
        fromLabel.adjustsFontSizeToFitWidth = YES;
        fromLabel.adjustsLetterSpacingToFitWidth = YES;
        fromLabel.minimumScaleFactor = 10.0f/12.0f;
        fromLabel.clipsToBounds = YES;
        fromLabel.backgroundColor = [UIColor clearColor];
        fromLabel.textColor =  [UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:239.0/255.0 alpha:255.0/255.0];
        fromLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:fromLabel];
        
        UIFont * customFont1 = [UIFont fontWithName:@"Arial" size:10]; //custom font
        NSString * text1 = [NSString stringWithFormat:@"%@",emp.EmpDesignation];
        
        CGSize labelSize1 = [text1 sizeWithFont:customFont1 constrainedToSize:CGSizeMake(200, 60) lineBreakMode:NSLineBreakByTruncatingTail];
        
        UILabel *fromLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 55, labelSize1.width, labelSize1.height)];
        fromLabel1.text = text1;
        fromLabel1.font = customFont1;
        fromLabel1.numberOfLines = 1;
        fromLabel1.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
        fromLabel1.adjustsFontSizeToFitWidth = YES;
        fromLabel1.adjustsLetterSpacingToFitWidth = YES;
        fromLabel1.minimumScaleFactor = 10.0f/12.0f;
        fromLabel1.clipsToBounds = YES;
        fromLabel1.backgroundColor = [UIColor clearColor];
        fromLabel1.textColor = [UIColor colorWithRed:163.0/255.0 green:163.0/255.0  blue:163.0/255.0  alpha:255.0/255.0];
        fromLabel1.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:fromLabel1];
        
        UIFont * customFont11 = [UIFont fontWithName:@"Arial" size:10]; //custom font
        
        CGSize labelSize11 = [text sizeWithFont:customFont11 constrainedToSize:CGSizeMake(200, 60) lineBreakMode:NSLineBreakByTruncatingTail];
        
        UILabel *fromLabel11 = [[UILabel alloc]initWithFrame:CGRectMake(105, 70, labelSize11.width, labelSize11.height)];
        fromLabel11.text = [NSString stringWithFormat:@"%@",emp.EmpDescription];
        fromLabel11.font = customFont11;
        fromLabel11.numberOfLines =1;
        fromLabel11.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
        fromLabel11.adjustsFontSizeToFitWidth = YES;
        fromLabel11.adjustsLetterSpacingToFitWidth = YES;
        fromLabel11.minimumScaleFactor = 10.0f/12.0f;
        fromLabel11.clipsToBounds = YES;
        fromLabel11.backgroundColor = [UIColor clearColor];
        fromLabel11.textColor = [UIColor colorWithRed:163.0/255.0 green:163.0/255.0  blue:163.0/255.0  alpha:255.0/255.0];
        fromLabel11.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:fromLabel11];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self
                   action:@selector(aMethod:)
         forControlEvents:UIControlEventTouchUpInside];
        button.tag=0;
        [button setTitle:@"View Details" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.titleLabel.font=[UIFont fontWithName:@"Arial" size:10];
        button.backgroundColor=[UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:239.0/255.0 alpha:1.0];
        button.frame = CGRectMake(220, 50, 80.0, 30.0);
        [self.contentView addSubview:button];
        [self.contentView bringSubviewToFront:button];
		
		//[Designer applyStylesForCell:self];
		//[Designer applyStylesForCellUsers:self];
	}
	
	return self;
}



@end
