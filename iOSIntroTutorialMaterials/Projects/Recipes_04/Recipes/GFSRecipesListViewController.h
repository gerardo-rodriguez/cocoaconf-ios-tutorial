//
//  GFSRecipesListViewController.h
//  Recipes
//
//  Created by James Dempsey on 10/19/12.
//  Copyright (c) 2012 Good Fun Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFSRecipesDataSource.h"

@interface GFSRecipesListViewController : UITableViewController

@property (nonatomic, strong) id <GFSRecipesDataSource> dataSource;

@end
