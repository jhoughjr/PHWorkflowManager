//
//  PHWorkflow.h
//  PHWorkflowManager
//
//  Created by Jimmy Hough Jr on 4/16/14.
//  Copyright (c) 2014 PH Systems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PHWorkflow : NSObject

@property (nonatomic, strong) UIViewController *masterViewController;
@property (nonatomic, strong) id delegate;
@property (nonatomic, copy) NSString *identifier;

+ (PHWorkflow*)workflowWithMasterViewController:(UIViewController*)masterController
                                    andDelegate:(id)delegate
                                  forIdentifier:(NSString*)workflowIdentifier;
@end
