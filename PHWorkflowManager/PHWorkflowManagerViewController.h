//
//  PHWorkflowManagerViewController.h
//  PHWorkflowManager
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PHWorkflow.h"

@interface PHWorkflowManagerViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *workflows;
@property (nonatomic, strong, readonly) PHWorkflow *currentWorkflow;

- (void)addWorkflow:(PHWorkflow*)workflow;

- (void)removeWorkflowWithIdentifier:(NSString*)identifier;

- (PHWorkflow*)workflowWithIdentifer:(NSString*)identifier;

- (void)switchToWorkflowWithIdentifier:(NSString*)workflowIdentifier;

@end
