//
//  ViewController.m
//  scroll-cell-test
//
//  Created by devon blandin on 3/14/14.
//
//

#import "ViewController.h"
#import "ScrollCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame: self.view.bounds style:UITableViewStylePlain];
    [tableView setDataSource:self];
    
    [self.view addSubview: tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[ScrollCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"IDENTIFIER"];
}

@end
