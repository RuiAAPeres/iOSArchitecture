//
//  RPSportsFeedViewController.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/13.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPSportsFeedViewController.h"
#import "RPInteractor.h"
#import "RPSportsBoundaryProtocol.h"

@implementation RPSportsFeedViewController

@synthesize dataSourceManager;

- (void)viewDidLoad
{    
    // If we haven't set the _dataSourceManager previsouly,  we will use the default one
    // It's useful to set for testing purposes, for example.
    if (!self.dataSourceManager)
    {
        self.dataSourceManager = (id <RPSportsBoundaryProtocol>)[RPInteractor sportsFeedManager];
    }
    
    [self.dataSourceManager yahooSportsFeedWithCompletion:^(NSArray *sportsFeeds, NSError *error)
     {
         if (error)
         {
             // TODO: Handle the error;
         }
         else
         {
             // TODO: Handle a successful result;
         }
         
     }];

}


@end
