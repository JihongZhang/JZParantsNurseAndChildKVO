//
//  JZNurse.h
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JZChild;
@interface JZNurse : NSObject

@property(nonatomic, retain) JZChild *child;

-(id)initWithChild:(JZChild *)child;

@end
