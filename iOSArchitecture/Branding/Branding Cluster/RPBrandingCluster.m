//
//  RPImagesBrandingCluster.m
//  iOSArchitecture
//
//  Created by Rui Peres on 13/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPBrandingCluster.h"
#import "RPNikeImagesBranding.h"
#import "RPAdidasImagesBranding.h"

@implementation RPBrandingCluster

+ (Class <RPImagesBrandingProtocol>)imageBrander
{
    // Depending on the specific logic, you return the appropriate class
    // In this case we will use for debugging the Adidas brand, but the Nike one for production
    Class <RPImagesBrandingProtocol> imageBrander = Nil;
    
    if (DEBUG)
    {
        imageBrander = [RPAdidasImagesBranding class];
    }
    else
    {
        imageBrander = [RPNikeImagesBranding class];
    }
    
    return imageBrander;
}


@end
