//
//  CXXTabbarViewController.h
//  GTMediatorTest
//
//  Created by 链派社区 on 2018/12/20.
//  Copyright © 2018 风吹裤衩. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CXXTabbarViewController : UITabBarController

//**  选中tabbar  item 的回调  */
@property (nonatomic,copy)void(^itemSelectBlock)(UIViewController *selectViewCtrl);

+ (instancetype)shareInstance;

- (void)addChildVC: (UIViewController *)vc titileItem:(NSString *)titileItem normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired;


@end

NS_ASSUME_NONNULL_END
