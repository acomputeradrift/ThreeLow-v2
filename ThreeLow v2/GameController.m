//
//  GameController.m
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _holdDieArray = [[NSMutableArray alloc] init];
        _allRollsArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)holdDie:(int)number{
    
}
@end
