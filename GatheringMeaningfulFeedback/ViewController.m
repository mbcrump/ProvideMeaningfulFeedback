//
//  ViewController.m
//  GatheringMeaningfulFeedback
//
//  Created by Michael Crump on 7/28/14.
//  Copyright (c) 2014 Michael Crump. All rights reserved.
//

#import "ViewController.h"
#import <TelerikUI/TelerikUI.h>

@interface ViewController ()
{
    TKPlatformFeedbackSource *_platformFeedbackSource;
}
@end

//api key used to work with Telerik AppFeedback service
static NSString *apiKey = @"fe8f2b80-1683-11e4-8bdd-c93833da7c1e";

//user id used to send feedback to Telerik AppFeedback service
static NSString *uID = @"michael.crump@telerik.com";

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _platformFeedbackSource = [[TKPlatformFeedbackSource alloc] initWithKey:apiKey uid:uID];
    TKFeedbackController *feedbackController = (TKFeedbackController*)self.view.window.rootViewController;
    feedbackController.dataSource = _platformFeedbackSource;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)sendFeedbackManually:(id)sender {
    TKFeedbackController *feedbackController = (TKFeedbackController*)self.view.window.rootViewController;
    [feedbackController showFeedback];
    
}
@end
