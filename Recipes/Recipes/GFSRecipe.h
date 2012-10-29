//
//  GFSRecipe.h
//  Recipes
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GFSRecipe : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *instructions;
@property (nonatomic, copy) NSNumber *preparationTime;
@property (nonatomic, strong) UIImage *image;

@end
