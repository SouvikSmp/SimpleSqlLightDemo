//
//  Employee.h
//  SQLITEDEMO
//
//  Created by partha banerjee on 26/06/14.
//  Copyright (c) 2014 Wbg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject {
    NSString *ename;
    NSString *email;
}

@property (nonatomic, retain) NSString *ename;
@property (nonatomic, retain) NSString *email;

-(id)initWithName:(NSString *)n email:(NSString *)e;

@end