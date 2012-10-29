//
//  GFSRecipesDataSource.h
//  Recipes
//
//  Created by James Dempsey on 10/20/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GFSRecipe;

@protocol GFSRecipesDataSource <NSObject>

- (NSInteger)recipeCount;
- (GFSRecipe *)recipeAtIndex:(NSInteger)index;
- (void)deleteRecipeAtIndex:(NSInteger)index;

@end
