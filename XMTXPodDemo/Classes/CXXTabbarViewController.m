//
//  CXXTabbarViewController.m
//  GTMediatorTest
//
//  Created by 链派社区 on 2018/12/20.
//  Copyright © 2018 风吹裤衩. All rights reserved.
//

#define RGBA_GrayColor(W , A) [UIColor colorWithRed:((W) / 255.0f) green:((W) / 255.0f) blue:((W) / 255.0f) alpha:A]
#define RGB_GrayColor(W) [UIColor colorWithRed:((W) / 255.0f) green:((W) / 255.0f) blue:((W) / 255.0f) alpha:1.0f]


#import "CXXTabbarViewController.h"

@interface CXXTabbarViewController ()<UITabBarControllerDelegate>

@end

@implementation CXXTabbarViewController

+ (instancetype)shareInstance {
    
    static CXXTabbarViewController *tabbarC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarC = [[CXXTabbarViewController alloc] init];
    });
    return tabbarC;
}

- (void)addChildVC: (UIViewController *)vc titileItem:(NSString *)titileItem normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired{

    UINavigationController *aVc = [[UINavigationController alloc] initWithRootViewController:vc];
    UITabBarItem *tabItem=[[UITabBarItem alloc]initWithTitle:titileItem image:[[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    aVc.tabBarItem = tabItem;
    [self addChildViewController:aVc];
    self.tabBar.tintColor = [UIColor orangeColor];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.barStyle = UIBarStyleBlack ;
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.delegate = self ;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (self.itemSelectBlock) {
        self.itemSelectBlock(viewController);
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
