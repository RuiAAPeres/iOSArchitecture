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

+ (void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock
{
    NSURL *yahooSportsEndpointURL = [NSURL URLWithString:kYahooSportsEndPoint];
    NSURLRequest *yahooSportsRequest = [[NSURLRequest alloc] initWithURL:yahooSportsEndpointURL];
    NSURLSession *yahooSportsURLSession = [[NSURLSession alloc] init];
    
    [yahooSportsURLSession dataTaskWithRequest:yahooSportsRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        if (error)
        {
            // TODO: This would be an appropriate place to use a Factory Class to translate an NSError's code into something readable for the user.
            //       The UIViewController shouldn't care about what an NSError actually is, but inform the user of what happened with a proper title/
            //        message
            completionBlock(nil,error);
        }
        else
        {
            [RPParsingManager yahooSportsFeed:data completion:completionBlock];
        }
    }];
}

@end

