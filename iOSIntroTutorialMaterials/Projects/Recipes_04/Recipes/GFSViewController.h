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

@property(nonatomic, weak) IBOutlet UILabel *name;
@property(nonatomic, weak) IBOutlet UILabel *directions;
@property(nonatomic, weak) IBOutlet UILabel *preparationTime;
@property(nonatomic, weak) IBOutlet UIImageView *image;

@property(nonatomic, strong) GFSRecipe *recipe;

@end
