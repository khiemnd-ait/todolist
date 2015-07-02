//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Khiem Nguyen Dinh on 6/14/15.
//  Copyright (c) 2015 Khiem Nguyen Dinh. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnSave;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.btnSave setEnabled:NO];
    [self.textField addTarget:self action:@selector(abc) forControlEvents:UIControlEventEditingChanged];
    // Do any additional setup after loading the view.
}

- (void)abc {

    if (self.textField.text.length > 0) {
        [self.btnSave setEnabled:YES];
    }else{
        [self.btnSave setEnabled:NO];
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (textField.text.length > 0) {
        [self.btnSave setEnabled:YES];
    }else{
        [self.btnSave setEnabled:NO];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if (sender != self.btnSave) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc]init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end
