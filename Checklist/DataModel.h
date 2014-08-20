//
//  DataModel.h
//  Checklist
//
//  Created by RoBeRt on 14-8-14.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

@property (nonatomic, strong) NSMutableArray *lists;

- (void)saveChecklists;
- (NSInteger)indexOfSelectedChecklist;
- (void)setIndexOfSelectedChecklist:(NSInteger)index;
- (void)sortChecklists;
+ (NSUInteger)nextChecklistItemId;
@end
