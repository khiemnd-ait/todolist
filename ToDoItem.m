//
//  ToDoItem.m
//  ToDoList
//
//  Created by Khiem Nguyen Dinh on 6/15/15.
//  Copyright (c) 2015 Khiem Nguyen Dinh. All rights reserved.
//

#import "ToDoItem.h"

@interface ToDoItem()
@property NSDate *completionDate;

@end

@implementation ToDoItem
- (void)markAsCompleted:(BOOL)isComplete{
    self.completed = isComplete;
}

- (void) setCompletionDate {
    if(self.completed) {
        self.completionDate = [NSDate date];
    } else{
        self.completionDate = nil;
    }
}
@end
