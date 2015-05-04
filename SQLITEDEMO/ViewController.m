//
//  ViewController.m
//  SQLITEDEMO
//


#import "ViewController.h"
#import "Employee.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Query the database for all emp records and construct the "employees" array
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[appDelegate readEmployeesFromDatabase];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)view
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSLog(@"number of rows: %ld", appDelegate.employees.count);
    
    return appDelegate.employees.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set up the cell
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	Employee *emp = (Employee *)[appDelegate.employees objectAtIndex:indexPath.section];
    
   
    
    cell.textLabel.text = emp.ename;
    cell.detailTextLabel.text = emp.email;
    
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section==0) {
        // The user chose the first cell in the first section
    } else {
        if (indexPath.row==0) {
            // The user chose the first row in the second section
        } else {
            // The user chose the second row in the second section
        } }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
