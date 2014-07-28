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
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)sendFeedbackManually:(id)sender {
    
    UIStoryboard *MainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[ MainStoryboard instantiateViewControllerWithIdentifier:@"Main"]];
    navigationController.navigationBar.translucent = NO;
    
    
    TKFeedbackController *feedbackController = [[TKFeedbackController alloc] init];
    feedbackController.dataSource = [[TKPlatformFeedbackSource alloc] initWithKey:apiKey uid:uID];
    feedbackController.contentController = navigationController;

    
    self.view.window.rootViewController = feedbackController;
    [feedbackController showFeedback];
    
}

@end
