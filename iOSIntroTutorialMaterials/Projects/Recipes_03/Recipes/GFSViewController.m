//
//  GFSViewController.m
//  Recipes
//
//  Created by James Dempsey on 10/19/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import "GFSViewController.h"
#import "GFSRecipe.h"

@interface GFSViewController ()

@end

@implementation GFSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.nameLabel.text = self.recipe.name;
    self.directionsLabel.text = self.recipe.directions;
    self.preparationTimeLabel.text = [self.recipe.preparationTime stringValue];
    if (nil != self.recipe.image) {
        self.imageView.image = self.recipe.image;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
