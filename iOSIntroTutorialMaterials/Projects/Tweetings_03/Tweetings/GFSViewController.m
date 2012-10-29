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

@property (weak, nonatomic) IBOutlet UIWebView *webView;

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
    tweetVC.completionHandler = ^(SLComposeViewControllerResult result) {
        [self dismissViewControllerAnimated:YES completion:NULL];
        [self loadTweets:nil];
    };
    [self presentViewController:tweetVC animated:YES completion:NULL];
}

- (IBAction)loadTweets:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://twitter.com/YOUR_TWITTER_HANDLE_HERE"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

@end
