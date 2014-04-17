//
//  PHWorkflowManagerViewController.m
//  PHWorkflowManager
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import "PHWorkflowManagerViewController.h"

@interface PHWorkflowManagerViewController ()

@end

@implementation PHWorkflowManagerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _currentWorkflow = nil;
        _workflows = [NSMutableArray array];
        
    }
    return self;
}


- (void)addWorkflow:(PHWorkflow *)workflow
{
    if ([workflow isKindOfClass:[PHWorkflow class]]) {
        
        [_workflows addObject:workflow];
    }
}

- (PHWorkflow*)workflowWithIdentifer:(NSString*)identifier
{
    PHWorkflow *workflowToReturn = nil;
    
    for (PHWorkflow *workflow in _workflows) {
        if ([[workflow identifier] isEqualToString:identifier]) {
            workflowToReturn = workflow;
        }
    }
    return workflowToReturn;
}

- (void)removeWorkflowWithIdentifier:(NSString *)identifier
{
    
}
@end
