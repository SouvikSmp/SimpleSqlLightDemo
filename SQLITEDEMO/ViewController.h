//
//  ViewController.h
//  SQLITEDEMO
//


#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
