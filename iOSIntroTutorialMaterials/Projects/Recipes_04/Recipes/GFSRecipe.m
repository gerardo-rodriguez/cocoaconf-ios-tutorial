//
//  GFSRecipe.m
//  Recipes
//
//  Created by James Dempsey on 10/19/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import "GFSRecipe.h"

@implementation GFSRecipe

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ - %@ - %@", self.name, self.preparationTime, [[self.directions substringToIndex:10] stringByAppendingString:@"…"]];
}

@end
