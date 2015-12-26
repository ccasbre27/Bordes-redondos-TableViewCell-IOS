//
//  OptionTableViewController.m
//  Bordes redondos Table View Cell
//
//  Created by user on 12/26/15.
//  Copyright © 2015 user. All rights reserved.
//

#import "OptionTableViewController.h"
#import "Option.h"
#import "OptionTableViewCell.h"

@interface OptionTableViewController ()
{
    NSMutableArray *optionsArray;
}

@end

@implementation OptionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    optionsArray = [[NSMutableArray alloc]init];
    Option * option;
    NSString * titleOption;

    for (int i = 0; i < 15; i++)
    {
        titleOption = [NSString stringWithFormat:@"Título #%i", i];
        option = [[Option alloc] initWithTitle:titleOption PictureURL:@"option.png"];
        
        [optionsArray addObject:option];
    }
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return optionsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *v = [UIView new];
    [v setBackgroundColor:[UIColor clearColor]];
    return v;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"optionTableViewCell";
    
    OptionTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    long row = [indexPath section];
    
    Option *option = [optionsArray objectAtIndex:row];
    
    [cell.lblTitle setText:option.title];
    [cell.imgIcono setImage:[UIImage imageNamed:option.image]];
    
    
    
    [cell.layer setCornerRadius:35.0f];
    
    return cell;
}

@end
