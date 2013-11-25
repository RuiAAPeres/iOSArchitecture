//
//  RPAppDelegate.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPAppDelegate.h"
#import "RPSportsFeedViewController.h"

@implementation RPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    RPSportsFeedViewController *sportsFeedController = [[RPSportsFeedViewController alloc] initWithNibName:nil bundle:nil];

    [[self window] setRootViewController:sportsFeedController];
    
    return YES;
}

@end
