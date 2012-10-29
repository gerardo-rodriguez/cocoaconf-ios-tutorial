//
//  GFSViewController.h
//  Tweetings
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFSViewController : UIViewController

- (IBAction)showTweetSheet:(id)sender;
- (IBAction)loadTweets:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
