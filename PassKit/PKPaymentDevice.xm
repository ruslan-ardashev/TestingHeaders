#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKPaymentDevice
- (NSString *)debugDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (unsigned int )hash { %log; unsigned int  r = %orig; NSLog(@" = %u", r); return r; }
- (void)setSkipLocationCheck:(BOOL )skipLocationCheck { %log; %orig; }
- (BOOL )skipLocationCheck { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
+ (id)clientInfoHTTPHeader { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)_executeProvisioningCompletionHandlers { %log; %orig; }
- (void)_finishLocationFixWithLocation:(id)arg1 { %log; %orig; }
- (id)configurationData { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)configurationDataWithCompletionHandler:(id /* block */)arg1 { %log; %orig; }
- (void)deleteApplicationWithAID:(id)arg1 { %log; %orig; }
- (id)init { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithCallbackQueue:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)locationManager:(id)arg1 didFailWithError:(id)arg2 { %log; %orig; }
- (void)locationManager:(id)arg1 didUpdateLocations:(id)arg2 { %log; %orig; }
- (void)provisioningDataWithCompletionHandler:(id /* block */)arg1 { %log; %orig; }
- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)arg1 withCompletion:(id /* block */)arg2 { %log; %orig; }
- (void)queueConnectionToTrustedServiceManagerWithCompletion:(id /* block */)arg1 { %log; %orig; }
- (void)registrationDataWithAuthToken:(id)arg1 completionHandler:(id /* block */)arg2 { %log; %orig; }
- (id)rewrapDataWithDeviceIdentifier:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRegistrationRegionMap:(id)arg1 { %log; %orig; }
- (void)signData:(id)arg1 withCompletionHandler:(id /* block */)arg2 { %log; %orig; }
%end
