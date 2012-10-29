//
//  GFSViewController.m
//  Recipes
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
//

#import "GFSViewController.h"
#import "GFSRecipe.h"

@interface GFSViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *instructionsLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation GFSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.titleLabel.text = self.recipe.name;
    self.prepTimeLabel.text = [self.recipe.preparationTime stringValue];
    self.instructionsLabel.text = self.recipe.instructions;
    
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
