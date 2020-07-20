#import <React/RCTBridgeDelegate.h>
#import <UIKit/UIKit.h>
@import WatchConnectivity;
@class WatchBridge;

@interface AppDelegate : UIResponder <UIApplicationDelegate, RCTBridgeDelegate>

@property (nonatomic, strong) UIWindow *window;
@property(nonatomic, strong) WatchBridge *watchBridge;
@property(nonatomic, strong) WCSession *session;


@end
