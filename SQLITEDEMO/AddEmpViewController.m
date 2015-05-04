//
//  AddEmpViewController.m
//  SQLITEDEMO
//


#import "AddEmpViewController.h"

@implementation AddEmpViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIImage *normalImage = [[UIImage imageNamed:@"whiteButton.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    UIImage *pressedImage = [[UIImage imageNamed:@"blueButton.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    
    [self.saveBtn setBackgroundImage:normalImage forState:UIControlStateNormal];
    [self.saveBtn setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnSave:(id)sender
{
  
    BOOL success = NO;
    
    NSString *alertString = @"Data Insertion failed";
    
    if (self.txtEName.text.length > 0 && self.txtEmail.text.length > 0)
    {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        NSInteger n = appDelegate.employees.count;
        NSString *eno = [NSString stringWithFormat:@"%ld", (n+1)];
        success = [appDelegate saveData: eno ename:self.txtEName.text email:self.txtEmail.text];
    }
    else{
        alertString = @"Enter all fields";
    }
    
    if (success == NO) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              alertString message:nil
                                                      delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              @"Data Saved" message:nil
                                                      delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        self.txtEName.text = @"";
        self.txtEmail.text = @"";
    }
}

- (IBAction)hideKBD:(id)sender {
    [self.txtEName resignFirstResponder];
    [self.txtEmail resignFirstResponder];
}

@end
