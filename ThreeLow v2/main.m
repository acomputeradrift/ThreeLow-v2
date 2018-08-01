//
//  main.m
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameController = [[GameController alloc] init];
        
        for (int i=0; i<5; i++) {
            Dice *die = [[Dice alloc] init];
            [gameController.allRollsArray addObject:die];
        }
        
        
        while (YES){
            InputHandler *input = [[InputHandler alloc] init];
            NSLog(@"Enter your command:");
            NSString *result = [input getInput];
            
            if ([result isEqualToString:@"roll"]){
                NSMutableString *yourHand = [[NSMutableString alloc] initWithString:@"The die rolled these :"];
                
                
                for (int i=0; i<5; i++) {
                    Dice *die = [gameController.allRollsArray objectAtIndex:i];
                    [die roll];
                    [yourHand appendFormat:@"\n     %@",die.description];
                }
                NSLog(@"%@", yourHand);
                if ([result isEqualToString:@"quit"]){
                    break;
                }
            }
        }
        return 0;
    }
}
