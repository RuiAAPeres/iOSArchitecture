//
//  RPConnectionManager.h
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPCommonDataSourceManagerDefinitions.h"

@interface RPConnectionManager : NSObject

+ (void)yahooSportsFeedFromServerWithCompletion:(RPYahooSportsCompletionBlock)completionBlock;

@end
