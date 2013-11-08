//
//  RPInteractor.h
//  iOSArchitecture
//
//  Created by Rui Peres on 08/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RPSportsBoundaryProtocol;

@interface RPInteractor : NSObject

+ (Class <RPSportsBoundaryProtocol>)sportsFeedManager;

@end
