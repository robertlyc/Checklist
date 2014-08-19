//
//  IconPickerViewController.h
//  Checklist
//
//  Created by RoBeRt on 14-8-19.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IconPickerViewController;

@protocol IconPickerViewControllerDelegate <NSObject>

- (void)iconPicker:(IconPickerViewController *)picker didPickIcon:(NSString *)iconName;

@end

@interface IconPickerViewController : UITableViewController

@property (nonatomic, weak) id <IconPickerViewControllerDelegate> delegate;

@end
