//
//  RPSportsFeedViewController+Branding.m
//  iOSArchitecture
//
//  Created by Rui Peres on 13/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import "RPSportsFeedViewController+Branding.h"

#import "RPBrandingCluster.h"
#import "RPImagesBrandingProtocol.h"

@implementation RPSportsFeedViewController (Branding)

- (void)brandViewController
{
    Class<RPImagesBrandingProtocol> imageBranding = [RPBrandingCluster imageBrander];
    
    __unused UIImage *smallLogo = [imageBranding smallLogoImage];
    __unused UIImage *bigLogo = [imageBranding bigLogoImage];
    __unused UIImage *defaultBackground = [imageBranding defaultBackgroundImage];

}

@end
