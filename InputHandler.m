//
//  InputHandler.m
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getInput
{
    char inputCString[255];
    
    fgets(inputCString, 255, stdin);
    NSString *result = [NSString stringWithCString:inputCString
                                          encoding:NSUTF8StringEncoding];
    
    //trim the newline
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result;
}

- (int)getHoldIndex:(NSString *)holdInput
{
    NSArray *holdInputWithIndex= [holdInput componentsSeparatedByString:@" "];//taking holdInput passing an argument to the method componentSep... and loading to inputUtility
    int indexnumber = 0;
    if ([holdInputWithIndex count] == 2)
    {
        NSString *indexString = [holdInputWithIndex objectAtIndex:1]; // grabs the index part of input
        indexnumber = [indexString intValue]; // turns the index part of input in int
    }
    return indexnumber;
}
@end

