//
//  RPDataSourceManager.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPDataSourceManager.h"
#import "RPConnectionManager.h"

@implementation RPDataSourceManager

#pragma mark - RPSportBoundryProtocol Implementation

- (void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock
{
    // TODO: This is the place to add rules on the data source we want to use:
    //       server, mock, cache, etc
    //       For this particular case, we will just make a server connection
    
    [RPConnectionManager yahooSportsFeedFromServerWithCompletion:completionBlock];
}

@end
