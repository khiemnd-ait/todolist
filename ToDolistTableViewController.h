//
//  ToDolistTableViewController.h
//  ToDoList
//
//  Created by Khiem Nguyen Dinh on 6/14/15.
//  Copyright (c) 2015 Khiem Nguyen Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"

@interface ToDolistTableViewController : UITableViewController
@property NSMutableArray *toDoItems;
- (IBAction) unwindToList:(UIStoryboardSegue *)segue;
- (void) loadInitialData;
@end
