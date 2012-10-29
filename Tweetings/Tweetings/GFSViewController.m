//
//  GFSViewController.m
//  Tweetings
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
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
//    SLComposeViewController *fbVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [tweetVC setInitialText:@"I just finished my first project! Woo-hoo! :D #cocoaconf"];
//    [fbVC setInitialText:@"This message is coming from an iOS app that I created at the #cocoaconf in PDX! Sweet! :D"];
    
    [self presentViewController:tweetVC animated:YES completion:NULL];
//    [self presentViewController:fbVC animated:YES completion:NULL];
}

- (IBAction)loadTweets:(id)sender {
    NSURL *tweetURL = [NSURL URLWithString:@"https://www.twitter.com/_gerardo"];
    NSURLRequest *request = [NSURLRequest requestWithURL:tweetURL];
    [self.webView loadRequest:request]; // we are using dot syntax here to access a property
}
@end
