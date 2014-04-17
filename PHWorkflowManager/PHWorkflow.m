//
//  PHWorkflow.m
//  PHWorkflowManager
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import "PHWorkflow.h"

@implementation PHWorkflow

+ (PHWorkflow*)workflowWithMasterViewController:(UIViewController*)masterController
                                    andDelegate:(id)delegate
                                  forIdentifier:(NSString*)workflowIdentifier
{
    PHWorkflow *workflow = [[PHWorkflow alloc] init];
    [workflow setMasterViewController:masterController];
    [workflow setDelegate:delegate];
    [workflow setIdentifier:workflowIdentifier];
    
    return workflow;
}

@end
