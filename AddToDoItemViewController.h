//
//  AddToDoItemViewController.h
//  ToDoList
//
//  Created by Khiem Nguyen Dinh on 6/14/15.
//  Copyright (c) 2015 Khiem Nguyen Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"

@interface AddToDoItemViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property ToDoItem *toDoItem;
@end
