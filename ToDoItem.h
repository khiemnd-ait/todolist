//
//  ToDoItem.h
//  ToDoList
//
//  Created by Khiem Nguyen Dinh on 6/15/15.
//  Copyright (c) 2015 Khiem Nguyen Dinh. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ToDoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
- (void)markAsCompleted:(BOOL)isComplete;
@end
