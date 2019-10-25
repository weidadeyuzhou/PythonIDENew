//
//  AppDelegate+JJExtension.m
//  KaiguanDemo
//
//  Created by 亚瑟 on 2019/6/16.
//  Copyright © 2019 rose. All rights reserved.
//

#import "AppDelegate+JJExtension.h"
#import <objc/runtime.h>
#import <UserNotifications/UserNotifications.h>
#import "JPUSHService.h"

static NSString *remotenofiKey = @"remotenofiKey";

@interface AppDelegate()<JPUSHRegisterDelegate,UIApplicationDelegate>

@end

@implementation AppDelegate (JJExtension)
@dynamic isLandscape;


+ (void)initialize{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = [self class];
        // 获取系统数组的selector
        SEL   systemSelector = @selector(application:didFinishLaunchingWithOptions:);
        // 自己要交换的selector
        SEL   swizzledSelector = @selector(remoteapplication:didFinishLaunchingWithOptions:);
        // 两个方法的Method
        Method originalMethod = class_getInstanceMethod(cls, systemSelector);
        Method swizzledMethod = class_getInstanceMethod(cls, swizzledSelector);
        //  动态添加方法
        if (class_addMethod(cls, systemSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))) {
            // 添加成功的话将被交换方法的实现替换到这个并不存在的实现
            class_replaceMethod(cls, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        }else {
            //添加不成功，交换两个方法的实现
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
        
        SEL   systemSelector1 = @selector(applicationWillEnterForeground:);
        // 自己要交换的selector
        SEL   swizzledSelector2 = @selector(remoteapplicationWillEnterForeground:);
        // 两个方法的Method
        Method originalMethod1 = class_getInstanceMethod(cls, systemSelector1);
        Method swizzledMethod2 = class_getInstanceMethod(cls, swizzledSelector2);
        //  动态添加方法
        if (class_addMethod(cls, systemSelector1, method_getImplementation(swizzledMethod2), method_getTypeEncoding(swizzledMethod2))) {
            // 添加成功的话将被交换方法的实现替换到这个并不存在的实现
            class_replaceMethod(cls, swizzledSelector2, method_getImplementation(originalMethod1), method_getTypeEncoding(originalMethod1));
        }else {
            //添加不成功，交换两个方法的实现
            method_exchangeImplementations(originalMethod1, swizzledMethod2);
        }
        
        
        
    });
}

- (BOOL)remoteapplication:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setRemoteDict:launchOptions];
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
    
    return [self remoteapplication:application didFinishLaunchingWithOptions:launchOptions];
}



- (NSDictionary *)remoteDict
{
    return objc_getAssociatedObject(self, &remotenofiKey);
}

- (void)setRemoteDict:(NSDictionary *)remoteDict
{
    objc_setAssociatedObject(self, &remoteDict, remotenofiKey, OBJC_ASSOCIATION_COPY);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registRemote:) name:@"registRemote" object:nil];
    
}

- (void)setIsLandscape:(BOOL)isLandscape {
    
    objc_setAssociatedObject(self, "isLandscape", @(isLandscape), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isLandscape {
    
    return [objc_getAssociatedObject(self, "isLandscape") boolValue];
}



- (void)registRemote:(NSNotification *)nofo
{
    [JPUSHService setupWithOption:self.remoteDict appKey:nofo.object  channel:@"App Store" apsForProduction:YES advertisingIdentifier:nil];
    JPUSHRegisterEntity * entity = [[JPUSHRegisterEntity alloc] init];
    entity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
    }
    [JPUSHService registerForRemoteNotificationConfig:entity delegate:self];
}

- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    /// Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:deviceToken];
}


- (void)remoteapplicationWillEnterForeground:(UIApplication *)application
{
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
}






// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)notification{
    if (notification && [notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}

// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary * userInfo = notification.request.content.userInfo;
    if([notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:userInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}

// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary * userInfo = response.notification.request.content.userInfo;
    if([response.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:userInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:userInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:userInfo];
}





@end
