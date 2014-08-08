//
//  ChecklistItem.m
//  Checklist
//
//  Created by RoBeRt on 14-8-8.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

- (void)toggleChecked {
    self.checked = !self.checked;
}

@end
