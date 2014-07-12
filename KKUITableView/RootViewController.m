//
//  RootViewController.m
//  KKUITableView
//
//  Created by hdk on 2014. 7. 10..
//  Copyright (c) 2014년 Kevin. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

//- (BOOL)prefersStatusBarHidden
//{
//    return YES;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Methods


#pragma mark - UITableView Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9 * 20; // 2 ~ 3단 출력 // 제가 간단하게 20단 출력으로 변경해줌
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdeintifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdeintifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellIdeintifier];
    }
    NSUInteger column = (indexPath.row / 9) + 2; // 2단 부터니까 + 2
    NSUInteger row = (indexPath.row % 9) + 1; // 1 부터니까 + 1
    cell.textLabel.text = [NSString stringWithFormat:@"%d x %d =", column, row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", column * row];
    return cell;
}

#pragma mark - UITableView Delegate Method
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"셀이 선택됩니다. 행:%d",  indexPath.row);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
