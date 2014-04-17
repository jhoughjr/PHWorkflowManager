//
//  PHWorkflowTests.m
//  PHWorkflowManager
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PHWorkflow.h"

@interface PHWorkflowTests : XCTestCase


@end

@implementation PHWorkflowTests

- (void)setUp
{
    [super setUp];

}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThat_classMethod_workflowWithMasterViewController_andIdentifer
{
    UIViewController *controller = [[UIViewController alloc] init];
    id delegate = [[NSObject alloc] init];
    PHWorkflow *testWorkflow = [PHWorkflow workflowWithMasterViewController:controller
                                                                andDelegate:delegate
                                                              forIdentifier:@"testWorkflow"];
    XCTAssertEqualObjects([testWorkflow masterViewController], controller, @"The workflow shoudl have the master controller it was created with.");
    XCTAssertEqualObjects([testWorkflow delegate], delegate, @"The workflow should have the delegate it was created with.");
    XCTAssertEqualObjects([testWorkflow identifier], @"testWorkflow", @"The workflow should have the identifier it was created with.");
    
                                
    
}

@end
