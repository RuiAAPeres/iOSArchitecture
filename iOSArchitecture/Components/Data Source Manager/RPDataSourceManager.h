//
//  RPDataSourceManager.h
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPCommonDataSourceManagerConstants.h"

/**
 The goal of the class is to act as a facade. When there is a need to get a sports feed,
 based on certain rules (offline/online, mock/real data) we will choose the right class for the
 job
 */
@interface RPDataSourceManager : NSObject

+ (void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock;

@end
