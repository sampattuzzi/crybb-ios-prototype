//
//  MessagesViewController.m
//  Crybb
//
//  Created by Samuel Pattuzzi on 10/12/2014.
//  Copyright (c) 2014 Crybb. All rights reserved.
//

#import "MessagesViewController.h"

@interface MessagesViewController ()
@property (nonatomic, readonly, strong) NSArray *messages;
@end

@implementation MessagesViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    _messages = @[@"Hi: message 1", @"Message2 here, how are you doing bla blha"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of time zone names.
    return [self.messages count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *MyIdentifier = @"MessageCell";

    /*
     Retrieve a cell with the given identifier from the table view.
     The cell is defined in the main storyboard: its identifier is MyIdentifier, and  its selection style is set to None.
     */
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];

    // Set up the cell.
    NSString *message = [self.messages objectAtIndex:indexPath.row];
    cell.textLabel.text = message;
    
    return cell;
}

@end
