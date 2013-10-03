//
//  RPParsingManager.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPParsingManager.h"
#import "RXMLElement.h"
#import "RPYahooSportFeed.h"

static NSString *const kIterationItems = @"channel.item";
static NSString *const kTitleTag = @"title";
static NSString *const kDescriptionTag = @"description";
static NSString *const kPublicationDateTag = @"pubDate";

static NSString *const kPublicationDateFormat = @"EEE, dd MMM yyyy HH:mm:ss ZZZ";

@implementation RPParsingManager

#pragma mark - Private methods

+ (NSArray *)arrayWithSportsFeedsFromXMLElement:(RXMLElement *)sportsFeedRootElement
{
    NSMutableArray *sportFeedsArray = [NSMutableArray array];
    
    NSDateFormatter *publishingDateFormatter = [[NSDateFormatter alloc] init];
    [publishingDateFormatter setDateFormat:kPublicationDateFormat];
    
    [sportsFeedRootElement iterate:kIterationItems usingBlock: ^(RXMLElement *sportFeedXMLElement) {
        
        NSString *feedTitle = [sportFeedXMLElement child:kTitleTag].text;
        NSString *feedDescription = [sportFeedXMLElement child:kDescriptionTag].text;
        NSDate *publicationDate = [publishingDateFormatter dateFromString:[sportFeedXMLElement child:kPublicationDateTag].text];
        
        RPYahooSportFeed *sportFeed = [[RPYahooSportFeed alloc] initWithTitle:feedTitle withDescription:feedDescription withPublicationDate:publicationDate];
        
        [sportFeedsArray addObject:sportFeed];
    }];
    
    // The use of copy: http://stackoverflow.com/a/1769017/491239
    return [sportFeedsArray copy];
}


#pragma mark - Public Parsing methods

+ (void)yahooSportsParseFeed:(NSData *)feedsData completion:(RPYahooSportsCompletionBlock)completionBlock;
{
    NSOperationQueue *parsingOperationQueue = [[NSOperationQueue alloc] init];
    
    [parsingOperationQueue addOperationWithBlock:^
    {
        RXMLElement *sportsFeedRootElement = [RXMLElement elementFromXMLData:feedsData];
        
        if (sportsFeedRootElement)
        {
            NSArray *sportFeedsArray = [RPParsingManager arrayWithSportsFeedsFromXMLElement:sportsFeedRootElement];
            
            /*
             TODO: This would probably be a good place to call a caching class to save the results
             on disk
             */
            [[NSOperationQueue mainQueue] addOperationWithBlock: ^
            {
                 completionBlock(sportFeedsArray,nil);
            }];
        }
        else
        {
            [[NSOperationQueue mainQueue] addOperationWithBlock: ^
             {
                 /*
                  TODO: This would be an appropriate place to use a
                  Factory Class to translate an NSError's code into something
                  readable for the user. Since we don't have an NSError, we should send
                  a more "default" error message to the user, like "We are not able to get 
                  the feeds". It doesn't make much sense to tell the user that there was an 
                  issue while parsing.
                  
                  For the moment use an newly allocated NSError.
                  */
                 NSError *defaultError = [[NSError alloc] init];
                 completionBlock(nil,defaultError);
             }];
        }
    }];
}

@end
