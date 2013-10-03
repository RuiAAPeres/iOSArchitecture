//
//  RPYahooSportFeed.m
//  iOSArchitecture
//
//  Created by Rui Peres on 03/10/13.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPYahooSportFeed.h"

@interface RPYahooSportFeed ()

// Since "description" is an NSObject's class method, to avoid ambiguity,
// It was decided to add the "feed" prefix.
// After that, it was added the "feed" prefix on each other
// property to make it consistent

@property(nonatomic,strong)NSString *feedTitle;
@property(nonatomic,strong)NSString *feedDescription;
@property(nonatomic,strong)NSDate *feedPublicationDate;

@end

@implementation RPYahooSportFeed

- (instancetype)initWithTitle:(NSString *)title withDescription:(NSString *)description withPublicationDate:(NSDate *)publicationDate
{
    if (self = [super init])
    {
        _feedTitle = title;
        _feedDescription = description;
        _feedPublicationDate = publicationDate;
    }
    
    return self;
}

@end
