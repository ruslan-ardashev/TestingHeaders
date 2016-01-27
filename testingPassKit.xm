#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook _ATXAppLaunchMonitor
- (id)appInfoManager { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)appLaunchHistogramManager { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)handleAppLaunchNotification:(id)arg1 reason:(id)arg2 { %log; %orig; }
- (id)init { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithAppInfoManager:(id)arg1 andAppLaunchHistogramManager:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithInMemoryStore { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)registerForAppChange { %log; %orig; }
- (void)start { %log; %orig; }
- (void)stop { %log; %orig; }
- (void)swapDuetHelper:(id)arg1 { %log; %orig; }
- (void)updateLaunchHistoryFromDuet { %log; %orig; }
- (void)updateLaunchHistoryFromDuet:(double)arg1 completionBlock:(id /* block */)arg2 { %log; %orig; }
%end
