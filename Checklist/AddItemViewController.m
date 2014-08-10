//
//  AddItemViewController.m
//  Checklist
//
//  Created by RoBeRt on 14-8-10.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (IBAction)cancel {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)done {
    NSLog(@"Contents of the text field: %@", self.textField.text);
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    self.doneBarButton.enabled = (newText.length > 0);

    
    return YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

@end
