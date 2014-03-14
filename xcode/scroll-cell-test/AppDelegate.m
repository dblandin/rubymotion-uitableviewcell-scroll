//
//  AppDelegate.m
//  scroll-cell-test
//
//  Created by devon blandin on 3/14/14.
//
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *controller = [[ViewController alloc] init];
    [window setRootViewController: controller];
    [window makeKeyAndVisible];

    return YES;
}

@end
