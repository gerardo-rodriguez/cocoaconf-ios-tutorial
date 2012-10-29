//
//  GFSViewController.m
//  Tweetings
//
//  Created by James Dempsey on 10/12/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import "GFSViewController.h"
#import <Social/Social.h>

@interface GFSViewController ()

@end

@implementation GFSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showTweetSheet:(id)sender {
    SLComposeViewController *tweetVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [tweetVC setInitialText:@"I just finished the first project - #cocoaconf"];
    [self presentViewController:tweetVC animated:YES completion:NULL];
}
@end
