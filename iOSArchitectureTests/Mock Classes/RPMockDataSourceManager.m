//
//  RPMockDataSourceManager.m
//  iOSArchitecture
//
//  Created by Rui Peres on 10/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPMockDataSourceManager.h"

@implementation RPMockDataSourceManager

- (void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock
{
    // An empty Array is enough to serve as an example, of what you can do
    completionBlock(@[],nil);
}

@end
