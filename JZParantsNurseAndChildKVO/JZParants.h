//
//  JZParants.h
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JZChild.h"


@interface JZParants : NSObject

@property(nonatomic, retain) JZChild *child;

-(id)initWithChild:(JZChild *)child;

@end
