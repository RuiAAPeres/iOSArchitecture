//
//  RPSportBoundryProtocol.h
//  iOSArchitecture
//
//  Created by Rui Peres on 08/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPCommonDataSourceManagerDefinitions.h"

@protocol RPSportsBoundaryProtocol <NSObject>

@required

- (void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock;

@end
