//
//  AppDelegate.m
//  Projectapp
//
//  Created by Enuke New Mac on 16/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "Rootviewcontroller.h"
#import "TermsView.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
     [GMSServices provideAPIKey:@"AIzaSyDkLZ3pU0e9am7DSa_AyIHZkq-6f-MW05w"];
    NSUserDefaults      *padFactoids;
    int                 launchCount;
    
    padFactoids = [NSUserDefaults standardUserDefaults];
    launchCount = [padFactoids integerForKey:@"launchCount"] + 1;
    [padFactoids setInteger:launchCount forKey:@"launchCount"];
    [padFactoids synchronize];
    NSUserDefaults *fetchDefaults = [NSUserDefaults standardUserDefaults];
    
    // getting an NSString
    NSString *message = [fetchDefaults objectForKey:@"loginornot"];
    if(![message isEqualToString:@"YES"])
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        // To Save A String
        [defaults setObject:@"NO" forKey:@"loginornot"];
        
        //saving an object
        
        // Synchronizing the defaults. If you don't do this the defaults may or may not sync.
        [defaults synchronize];
    }
    NSLog(@"number of times: %i this app has been launched", launchCount);
  
   
    if ( launchCount == 1 )
    {

        self.window.backgroundColor = [UIColor whiteColor];

        TermsView *root1=[[TermsView alloc]initWithNibName:@"TermsView" bundle:nil];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:root1];
        

        
        
        [nav1.navigationBar setBackgroundImage:[UIImage imageNamed:@"header_bg.png"] forBarMetrics:UIBarMetricsDefault];
        self.window.rootViewController = nav1;
        nav1.navigationBar.hidden=YES;

        NSLog(@"this is the FIRST LAUNCH of the app");
        // do stuff here as you wish
    }
    else
    {
        self.window.backgroundColor = [UIColor whiteColor];
        Rootviewcontroller *root=[[Rootviewcontroller alloc]initWithNibName:@"Rootviewcontroller" bundle:nil];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:root];
  
      
        
        
        [nav1.navigationBar setBackgroundImage:[UIImage imageNamed:@"header_bg.png"] forBarMetrics:UIBarMetricsDefault];

        self.window.rootViewController = nav1;
        nav1.navigationBar.hidden=YES;
      
        // do stuff here as you wish
    }
    [self.window makeKeyAndVisible];
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
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
