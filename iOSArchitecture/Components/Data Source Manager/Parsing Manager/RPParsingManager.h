//
//  RPParsingManager.h
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPCommonDataSourceManagerConstants.h"

@interface RPParsingManager : NSObject

+ (void)yahooSportsFeed:(NSData *)feedsData completion:(RPYahooSportsCompletionBlock)completionBlock;

@end
