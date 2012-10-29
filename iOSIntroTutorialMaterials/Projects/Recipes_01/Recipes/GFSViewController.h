//
//  GFSViewController.h
//  Recipes
//
//  Created by James Dempsey on 10/19/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GFSRecipe;

@interface GFSViewController : UIViewController

@property(nonatomic, weak) IBOutlet UILabel *nameLabel;
@property(nonatomic, weak) IBOutlet UILabel *directionsLabel;
@property(nonatomic, weak) IBOutlet UILabel *preparationTimeLabel;
@property(nonatomic, weak) IBOutlet UIImageView *imageView;

@property(nonatomic, strong) GFSRecipe *recipe;

@end
