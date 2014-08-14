//
//  JZChild.h
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JZChild : NSObject

@property(assign) NSInteger nursingCountdown;      //atomic for async safe in case multi care
@property(nonatomic, assign) NSInteger nursingPeriodic;
@property(nonatomic) BOOL hungry;

-(id)initWithPeriodic:(NSInteger)periodic;

@end
