//
//  RPSportsFeedViewController.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/13.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPSportsFeedViewController.h"
#import "RPDataSourceManager.h"

@implementation RPSportsFeedViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [RPDataSourceManager yahooSportsFeedWithCompletion:^(NSArray *sportsFeeds, NSError *error)
    {
        if (error)
        {
            // TODO: Handle the error;
        }
        else
        {
            // TODO: Handle a successful eresult;
        }
        
    }];
}


@end
