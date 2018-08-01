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
        InputHandler *input = [[InputHandler alloc] init];
        
        while (YES){
            
            NSLog(@"Enter your command:");
            NSString *result = [input getInput]; //init a NSString with result of getInput Method
            
            if ([result isEqualToString:@"roll"]){ //compare
                [gameController rollDie]; //getting roll from game controller
                NSLog (@"%@", gameController); //Logging roll
            }
            else if ([result hasPrefix:@"hold"]){
                [gameController holdDie:[input getHoldIndex:result]];//gets index from user, pass as message to HoldDie method in gameController class
                NSLog (@"%@", gameController);
            }
            else if ([result isEqualToString:@"quit"]){
                    break;
                }
            }
        }
        return 0;
    }

