//
//  RPImagesBrandingCluster.h
//  iOSArchitecture
//
//  Created by Rui Peres on 13/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RPImagesBrandingProtocol;

@interface RPBrandingCluster : NSObject

+ (Class <RPImagesBrandingProtocol>)imageBrander;

@end
