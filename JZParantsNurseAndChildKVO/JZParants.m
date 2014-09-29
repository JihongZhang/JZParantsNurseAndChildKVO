//
//  JZParants.m
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import "JZParants.h"
#import "JZChild.h"


@implementation JZParants

-(id)initWithChild:(JZChild *)child
{
    self = [super init];
    if(self != nil){
        self.child = [child retain];
        [self.child addObserver:self forKeyPath:@"hungry" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"test info"];
    }
    return self;
}


-(void)dealloc{
    [_child removeObserver:self forKeyPath:@"hungry"];
    [_child release];
    [super dealloc];
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    if([object isKindOfClass:[JZChild class]]){
        JZChild *child = (JZChild *)object;
        NSLog(@"Parants know it: change=%@", change);
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
}




@end
