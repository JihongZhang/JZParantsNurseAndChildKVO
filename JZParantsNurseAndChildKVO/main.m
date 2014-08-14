//
//  main.m
//  JZParantsNurseAndChildKVO
//
//  Created by jihong zhang on 8/14/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JZChild.h"
#import "JZNurse.h"
#import "JZParants.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        JZChild *child = [[JZChild alloc] init];
        JZNurse *nurse = [[JZNurse alloc] initWithChild:child];
        JZParants *parants = [[JZParants alloc] initWithChild:child];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

