//
//  JZNurse.m
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import "JZNurse.h"
#import "JZChild.h"

@implementation JZNurse

-(id)initWithChild:(JZChild *)child
{
    self = [super init];
    if(self != nil){
        self.child = [child retain];
        [self.child addObserver:self forKeyPath:@"hungry" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
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
        @synchronized(child){
            child.nursingCountdown = child.nursingPeriodic;
            //[child setValue:FALSE forKey:@"hungry"]; this will triger KVO, cause recusive calling
        }
        NSLog(@"Nurse is taking care of it: change=%@", change);
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
}

@end
