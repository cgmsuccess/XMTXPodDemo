//
//  CXXTabbarPublicAPI.m
//  GTMediatorTest
//
//  Created by 链派社区 on 2018/12/20.
//  Copyright © 2018 风吹裤衩. All rights reserved.
//

#import "Target_CXXTabbarPublicAPI.h"
#import "CXXTabbarViewController.h"

typedef void (^clickTabbarItemBlock)(UIViewController *selectCtrl);

@implementation Target_CXXTabbarPublicAPI

- (UIViewController *)Action_rootTabbarController1:(NSDictionary *)params;
{
    
   return  [CXXTabbarViewController shareInstance];
}

- (void)Action_addChildVC:(NSDictionary *)param
{
    UIViewController *vc = param[@"one"];
    NSString *itemTitle = param[@"two"];
    NSString *normalImage = param[@"three"];
    NSString *selectImage = param[@"four"];
    [[CXXTabbarViewController shareInstance] addChildVC:vc titileItem:itemTitle normalImageName:normalImage selectedImageName:selectImage isRequiredNavController:NO];
}

-(void)Action_invokeVc:(NSDictionary *)param
{
    NSInteger index = [param[@"index"] integerValue];
    [CXXTabbarViewController shareInstance].selectedIndex = index;
}

-(void)Action_ItemBardge:(NSDictionary *)param
{
    NSInteger index = [param[@"index"] integerValue];
    NSString *badgeValue = param[@"badgeValue"];
    UITabBarItem * item = [CXXTabbarViewController shareInstance].tabBar.items[index];
    item.badgeValue = [badgeValue isEqualToString:@"0"] ? nil : badgeValue;
}

-(void)Action_ClickTabbarItem:(NSDictionary *)param
{
    [CXXTabbarViewController shareInstance].itemSelectBlock = ^(UIViewController * _Nonnull selectViewCtrl) {
        clickTabbarItemBlock block = param[@"selectTabbarItem"];
        if (block) {
            block(selectViewCtrl);
        }
    };
    
}

@end
