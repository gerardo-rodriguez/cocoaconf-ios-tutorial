//
//  GFSAppDelegate.m
//  Recipes
//
//  Created by Gerardo Rodriguez on 10/25/12.
//  Copyright (c) 2012 Gerardo Rodriguez. All rights reserved.
//

#import "GFSAppDelegate.h"
#import "GFSRecipesListViewController.h"
#import "GFSRecipe.h"

@implementation GFSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
        
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    
    GFSRecipesListViewController *viewController = (GFSRecipesListViewController *)navController.topViewController;
    viewController.recipes = [self makeRecipes];
    
    return YES;
}

- (NSArray *)makeRecipes {
    NSMutableArray *array = [NSMutableArray array];
    
    GFSRecipe *cookies = [[GFSRecipe alloc] init];
    cookies.name = @"Cookies";
    cookies.instructions = @"Make some cookies!";
    cookies.preparationTime = @15;
    cookies.image = [UIImage imageNamed:@"cookies.jpg"];
    
    [array addObject:cookies];

    GFSRecipe *pie = [[GFSRecipe alloc] init];
    pie.name = @"Pie";
    pie.instructions = @"Make some pie!";
    pie.preparationTime = @3.14;
    pie.image = [UIImage imageNamed:@"rhubarbpie.jpg"];
    
    [array addObject:pie];

    GFSRecipe *cake = [[GFSRecipe alloc] init];
    cake.name = @"Cake";
    cake.instructions = @"Make some cake!";
    cake.preparationTime = @45;
    cake.image = [UIImage imageNamed:@" cake.jpg"];
    
    [array addObject:cake];
    
    return [array copy];
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
