//
//  RPInteractor.m
//  iOSArchitecture
//
//  Created by Rui Peres on 08/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPInteractor.h"
#import "RPDataSourceManager.h"

#import "RPSportBoundaryProtocol.h"

@implementation RPInteractor

+ (Class <RPSportsBoundaryProtocol>)sportsFeedManager;
{
    return (Class <RPSportsBoundaryProtocol>)[RPDataSourceManager class];
}

@end
