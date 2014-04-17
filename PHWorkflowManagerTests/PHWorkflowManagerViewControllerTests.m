//
//  PHWorkflowManagerTests.m
//  PHWorkflowManagerTests
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PHWorkflowManagerViewController.h"

@interface PHWorkflowManagerViewControllerTests : XCTestCase

@property (nonatomic, strong) PHWorkflowManagerViewController *testSubject;

@end

@implementation PHWorkflowManagerViewControllerTests

- (void)setUp
{
    [super setUp];
    self.testSubject = [[PHWorkflowManagerViewController alloc] initWithNibName:nil
                                                                         bundle:nil];
    
}

- (void)tearDown
{
    self.testSubject = nil;
    [super tearDown];
}

- (void)testInitWithNibNameBundle
{
    XCTAssertNotNil([_testSubject workflows], @"After init, the manager's workflows should be an NSMutableArray");
    XCTAssertNil([_testSubject currentWorkflow], @"After init, the manager's current workflow should be nil");
}

#pragma mark workflow addition tests

- (void)testAddWorkflowOnlyAddsWorkflows
{
    NSUInteger initialNumberOfWorkflows = [[_testSubject workflows] count];

    id notAWorkflow = @"";
    
    [_testSubject addWorkflow:notAWorkflow];
    
    NSUInteger finalNumberOfWorkflows = [[_testSubject workflows] count];
    
    XCTAssertTrue(finalNumberOfWorkflows == initialNumberOfWorkflows, @"The manager should not add non workflows");
}

- (void)testAddWorkflowAddsToWorkflows
{
    NSString *identifier = @"Test";
    UIViewController *masterVC = [[UIViewController alloc] initWithNibName:nil
                                                                    bundle:nil];
    id delegate = [[NSObject alloc] init];
    
    NSUInteger initialNumberOfWorkflows = [[_testSubject workflows] count];
    
    PHWorkflow *aWorkflow = [PHWorkflow workflowWithMasterViewController:masterVC
                                                            andDelegate:delegate
                                                          forIdentifier:identifier];
    
    [_testSubject addWorkflow:aWorkflow];
    
    NSUInteger finalNumberOfWorkflows = [[_testSubject workflows] count];
    
    XCTAssertTrue(finalNumberOfWorkflows == (initialNumberOfWorkflows + 1), @"The manager should not add non workflows");
}

- (void)testRemoveWorkflowWithIdentifier_removesTheCorrectWorkflow
{
    NSString *identifier = @"Test";
    NSString *identifier2 = @"Test2";
    
    id firstDelegate = [[NSObject alloc] init];
    id seconDelegate = [[NSObject alloc] init];

    UIViewController *masterVC1 = [[UIViewController alloc] initWithNibName:nil
                                                                     bundle:nil];
    
    UIViewController *masterVC2 = [[UIViewController alloc] initWithNibName:nil
                                                                    bundle:nil];
    
    PHWorkflow *aWorkflow = [PHWorkflow workflowWithMasterViewController:masterVC1
                                                             andDelegate:firstDelegate
                                                           forIdentifier:identifier];
    
    PHWorkflow *anotherWorkflow = [PHWorkflow workflowWithMasterViewController:masterVC2
                                                                   andDelegate:seconDelegate
                                                                 forIdentifier:identifier2];
    [_testSubject addWorkflow:aWorkflow];
    [_testSubject addWorkflow:anotherWorkflow];
    
    [_testSubject removeWorkflowWithIdentifier:identifier];
    
    XCTAssertNil([_testSubject workflowWithIdentifer:identifier], @"The workflow should have been removed.");


}
@end
