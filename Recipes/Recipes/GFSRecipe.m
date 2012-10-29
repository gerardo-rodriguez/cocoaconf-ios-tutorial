//
//  GFSRecipe.m
//  Recipes
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
//

#import "GFSRecipe.h"

@implementation GFSRecipe

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ - %@ - %@",
            self.name,
            self.preparationTime,
            [[self.instructions substringToIndex:10] stringByAppendingString:@"..."]];
}

@end
