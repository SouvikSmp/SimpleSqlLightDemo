//
//  Employee.m
//  SQLITEDEMO
//
//  Created by partha banerjee on 26/06/14.
//  Copyright (c) 2014 Wbg. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize ename, email;

-(id)initWithName:(NSString *)n email:(NSString *)e {
	self.ename = n;
	self.email = e;

	return self;
}

-(void)dealloc
{
    self.ename = nil;
    self.email = nil;
}

@end
