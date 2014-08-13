//
//  Checklist.h
//  Checklist
//
//  Created by RoBeRt on 14-8-11.
//  Copyright (c) 2014年 SpringShine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checklist : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *items;

@end
