//
//  CXXTabbarPublicAPI.h
//  GTMediatorTest
//
//  Created by 链派社区 on 2018/12/20.
//  Copyright © 2018 风吹裤衩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_CXXTabbarPublicAPI : NSObject


- (UIViewController *)Action_rootTabbarController1:(NSDictionary *)params;;

/**
 给tabbar 添加 ChildVc
 @param param @[@"one":vc,@"two":titile,@"three":normalImage,@"four":selectImage];  数组格式
 */
- (void)Action_addChildVC:(NSDictionary *)param;

/**
 tabbar 跳转某个子控制器
 @param 数据格式 @{@"index":index};
 */
-(void)Action_invokeVc:(NSDictionary *)param;


/**
 tabbar 设置某个角标item 的 berdge

 @param param 数据格式 @{@"index":index,@"badgeValue":badgeValue};
 */
-(void)Action_ItemBardge:(NSDictionary *)param;


/**
 tabbar 选中某个 item 回调

 @param param 数据格式 @{@"selectTabbarItem":block}
 */
-(void)Action_ClickTabbarItem:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
