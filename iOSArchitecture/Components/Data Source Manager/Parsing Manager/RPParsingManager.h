//
//  RPParsingManager.h
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPCommonDataSourceManagerDefinitions.h"

@interface RPParsingManager : NSObject

+ (void)yahooSportsParseFeed:(NSData *)feedsData completion:(RPYahooSportsCompletionBlock)completionBlock;

@end
