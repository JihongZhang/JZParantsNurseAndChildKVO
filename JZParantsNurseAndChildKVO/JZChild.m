//
//  JZChild.m
//  JZKVOEx
//
//  Created by jihong zhang on 8/13/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import "JZChild.h"


#define defaultNursingPeriodic   5

@implementation JZChild

-(id)init{
    self = [super init];
    if(self != nil){
        self.nursingPeriodic = defaultNursingPeriodic;
        self.nursingCountdown = self.nursingPeriodic;
        self.hungry = FALSE;
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return self;
}

-(id)initWithPeriodic:(NSInteger)periodic{
    self = [super init];
    if(self != nil){
        self.nursingPeriodic = periodic;
        self.nursingCountdown = self.nursingPeriodic;
        self.hungry = FALSE;
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return self;
}


-(void)timerAction:(NSTimer *)timer{
    // _hungry = TRUE;   this one will not triger KVO, because it won't send set message
    // need to call set to triger the KVO, like: self.hungry = TRUE; 
     @synchronized(self){
         self.nursingCountdown--;   
         if(self.nursingCountdown <= 0){
             self.hungry = TRUE;    //this one will call set and triger the KVO
         }else if(_hungry == TRUE){
             _hungry = FALSE;  //this one will not triger KVO, it won't call set
         }
     }
}

@end
