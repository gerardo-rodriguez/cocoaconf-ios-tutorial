//
//  GFSRecipesList.m
//  Recipes
//
//  Created by James Dempsey on 10/20/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import "GFSRecipesList.h"
#import "GFSRecipe.h"

@interface GFSRecipesList ()

@property (nonatomic, strong) NSMutableArray *recipes;

@end


@implementation GFSRecipesList

- (NSArray *)recipes {
    if(nil == _recipes) {
        self.recipes = [NSMutableArray array];
        GFSRecipe *recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"0 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:30];
        recipe.name = @"0 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"1 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:31];
        recipe.name = @"1 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"2 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:32];
        recipe.name = @"2 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"3 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:33];
        recipe.name = @"3 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"4 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:34];
        recipe.name = @"4 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        recipe = [[GFSRecipe alloc] init];
        recipe.directions = @"5 - Put some stuff in, and the other stuff, then stir";
        recipe.preparationTime = [NSNumber numberWithInt:35];
        recipe.name = @"5 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        [self.recipes addObject:recipe];
        
        NSString *directions = @"Put the flour and other dry ingredients in a bowl, \
        stir in the eggs until evenly moist. Add chocolate chips and stir in until even. \
        Place tablespoon sized portions on greased cookie sheet and bake at 350° for \
        6 minutes.";
        recipe = [[GFSRecipe alloc] init];
        recipe.name = @"Chocolate Chip Cookies";
        recipe.preparationTime = [NSNumber numberWithInt:36];
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        recipe.directions = directions;
        [self.recipes addObject:recipe];
    }
    return _recipes;
}

#pragma mark Recipe List Data Source Methods

- (NSInteger)recipeCount {
    return [self.recipes count];
}

- (GFSRecipe *)recipeAtIndex:(NSInteger)index {
    return [self.recipes objectAtIndex:index];
}

- (void)deleteRecipeAtIndex:(NSInteger)index {
    [self.recipes removeObjectAtIndex:index];
}

@end
