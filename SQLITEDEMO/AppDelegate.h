//
//  AppDelegate.h
//  SQLITEDEMO
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    // Database variables
	NSString *databaseName;
	NSString *databasePath;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) NSMutableArray *employees;

-(void) readEmployeesFromDatabase;
-(BOOL) saveData:(NSString*)_id ename:(NSString*)ename email:(NSString*)email;

@end
