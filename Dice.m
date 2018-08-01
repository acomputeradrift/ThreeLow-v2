//
//  Dice.m
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int)roll{
    self.currentValue = arc4random_uniform(5);
    return _currentValue;
}
- (NSString *)description
{
    NSArray *dicePictures = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [NSString stringWithFormat:@"%@", dicePictures[self.currentValue]];
}
@end
