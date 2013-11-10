//
//  RPSportsFeedViewControllerTesting.m
//
//
//  Created by Rui Peres on 10/11/2013.
//
//

#import <XCTest/XCTest.h>
#import "RPSportsFeedViewController.h"
#import "RPMockDataSourceManager.h"

@interface RPSportsFeedViewControllerTesting : XCTestCase

@property(nonatomic,strong)RPSportsFeedViewController *sportsFeedsViewController;

@end

@implementation RPSportsFeedViewControllerTesting

-(void)setUp
{
    [super setUp];
    
    self.sportsFeedsViewController = [[RPSportsFeedViewController alloc] initWithNibName:nil bundle:nil];
    [self.sportsFeedsViewController setDataSourceManager:[[RPMockDataSourceManager alloc] init]];
}

-(void)tearDown
{
    [super tearDown];
    self.sportsFeedsViewController = nil;
}

@end
