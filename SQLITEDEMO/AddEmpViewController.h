//
//  AddEmpViewController.h
//  SQLITEDEMO
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface AddEmpViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtEName;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UIButton *saveBtn;

- (IBAction)btnSave:(id)sender;
- (IBAction)hideKBD:(id)sender;

@end