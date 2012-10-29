//
//  GFSRecipe.h
//  Recipes
//
//  Created by James Dempsey on 10/19/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GFSRecipe : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *preparationTime;
@property (nonatomic, copy) NSString *directions;
@property (nonatomic, strong)UIImage *image;

@end
