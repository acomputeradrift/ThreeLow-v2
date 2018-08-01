//
//  InputHandler.h
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property NSString *input;

-(NSString *)getInput;

-(int) getHoldIndex :(NSString*)holdInput;
@end
