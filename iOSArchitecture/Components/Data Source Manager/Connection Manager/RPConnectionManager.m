//
//  RPConnectionManager.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPConnectionManager.h"
#import "RPParsingManager.h"

@implementation RPConnectionManager

static NSString *const kYahooSportsEndPoint = @"http://news.yahoo.com/rss/sports";

#pragma mark - Public Connection Methods

+ (void)yahooSportsFeedFromServerWithCompletion:(RPYahooSportsCompletionBlock)completionBlock
{
    NSURL *yahooSportsEndpointURL = [NSURL URLWithString:kYahooSportsEndPoint];
    NSURLSession *yahooSportsURLSession = [NSURLSession sharedSession];
    
    [[yahooSportsURLSession dataTaskWithURL:yahooSportsEndpointURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        if (error)
        {
            /* 
                TODO: This would be an appropriate place to use a
                Factory Class to translate an NSError's code into something 
                readable for the user.
                The UIViewController shouldn't care about what an NSError actually is, but inform the user
                of what happened with a proper error message.
             */
            completionBlock(nil,error);
        }
        else
        {
            [RPParsingManager yahooSportsParseFeed:data completion:completionBlock];
        }
   
    }] resume];
    
    
}

@end

