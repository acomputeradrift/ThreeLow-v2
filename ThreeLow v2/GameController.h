//
//  GameController.h
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray* holdDieArray;
@property NSMutableArray* allRollsArray;

- (void) holdDie: (int)number;

@end
