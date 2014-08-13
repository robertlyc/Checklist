//
//  AllListsViewController.h
//  Checklist
//
//  Created by RoBeRt on 14-8-11.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListDetailViewController.h"

@class DataModel;

@interface AllListsViewController : UITableViewController <ListDetailViewControllerDelegate>

@property (nonatomic, strong) DataModel *dataModel;

@end
