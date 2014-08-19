//
//  ListDetailViewController.m
//  Checklist
//
//  Created by RoBeRt on 14-8-11.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import "ListDetailViewController.h"
#import "Checklist.h"

@interface ListDetailViewController ()

@end

@implementation ListDetailViewController {
    NSString *_iconName;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.checklistToEdit != nil) {
        self.title = @"Edit Checklist";
        self.textField.text = self.checklistToEdit.name;
        self.doneBarButton.enabled = YES;
        _iconName = self.checklistToEdit.iconName;
    }
    
    self.iconImage.image = [UIImage imageNamed:_iconName];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _iconName = @"Folder";
    }
    return self;
}

- (IBAction)cancel {
    [self.delegate listDetailViewControllerDidCancel:self];
}

- (IBAction)done {
    if (self.checklistToEdit == nil) {
        Checklist *checklist = [[Checklist alloc] init];
        checklist.name = self.textField.text;
        checklist.iconName = _iconName;
        
        [self.delegate listDetailViewController:self didFinishAddingChecklist:checklist];
    } else {
        self.checklistToEdit.name = self.textField.text;
        self.checklistToEdit.iconName = _iconName;
        [self.delegate listDetailViewController:self didFinishEditingChecklist:self.checklistToEdit];
    }
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        return indexPath;
    } else {
        return nil;
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    self.doneBarButton.enabled = (newText.length > 0);
    
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"PickIcon"]) {
        IconPickerViewController *controller = segue.destinationViewController;
        controller.delegate = self;
    }
}

#pragma IconPickerViewController delegate methods

- (void)iconPicker:(IconPickerViewController *)picker didPickIcon:(NSString *)iconName {
    _iconName = iconName;
    self.iconImage.image = [UIImage imageNamed:_iconName];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
