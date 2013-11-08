//
//  RPSportsFeedViewController.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/13.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPSportsFeedViewController.h"
#import "RPInteractor.h"
#import "RPSportBoundaryProtocol.h"

@interface RPSportsFeedViewController ()


@end

@implementation RPSportsFeedViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    Class sportsFeedManager = (Class <RPSportsBoundaryProtocol>)[RPInteractor sportsFeedManager];
    [sportsFeedManager yahooSportsFeedWithCompletion:^(NSArray *sportsFeeds, NSError *error)
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
