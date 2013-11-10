//
//  RPDataSourceManagerInjection.h
//  iOSArchitecture
//
//  Created by Rui Peres on 10/11/2013.
//  Copyright (c) 2013 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSportsBoundaryProtocol.h"

@protocol RPDataSourceManagerInjection <NSObject>

@property(nonatomic,strong)id <RPSportsBoundaryProtocol> dataSourceManager;

@end
