#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKPass
- (NSURL *)appLaunchURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setAssociatedPassTypeIdentifiers:(NSSet *)associatedPassTypeIdentifiers { %log; %orig; }
- (NSSet *)associatedPassTypeIdentifiers { %log; NSSet * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setAuthenticationToken:(NSString *)authenticationToken { %log; %orig; }
- (NSString *)authenticationToken { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)backFaceImage { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (NSArray *)backFieldBuckets { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (PKBarcode *)barcode { %log; PKBarcode * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setDeviceName:(NSString *)deviceName { %log; %orig; }
- (NSString *)deviceName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setDisplayProfile:(PKPassDisplayProfile *)displayProfile { %log; %orig; }
- (PKPassDisplayProfile *)displayProfile { %log; PKPassDisplayProfile * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setEmbeddedBeacons:(NSSet *)embeddedBeacons { %log; %orig; }
- (NSSet *)embeddedBeacons { %log; NSSet * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setEmbeddedLocations:(NSSet *)embeddedLocations { %log; %orig; }
- (NSSet *)embeddedLocations { %log; NSSet * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setExpirationDate:(NSDate *)expirationDate { %log; %orig; }
- (NSDate *)expirationDate { %log; NSDate * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)footerImage { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)frontFaceImage { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (NSArray *)frontFieldBuckets { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setGroupingID:(NSString *)groupingID { %log; %orig; }
- (NSString *)groupingID { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL )hasLogoImageSet { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setHasStoredValue:(BOOL )hasStoredValue { %log; %orig; }
- (BOOL )hasStoredValue { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setiAdReportingIdentifier:(NSString *)iAdReportingIdentifier { %log; %orig; }
- (NSString *)iAdReportingIdentifier { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (UIImage *)icon { %log; UIImage * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)iconImage { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setIngestedDate:(NSDate *)ingestedDate { %log; %orig; }
- (NSDate *)ingestedDate { %log; NSDate * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setLocalLocationsURL:(NSURL *)localLocationsURL { %log; %orig; }
- (NSURL *)localLocationsURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)localizedDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)localizedName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)logoText { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)lowercaseLocalizedName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setModifiedDate:(NSDate *)modifiedDate { %log; %orig; }
- (NSDate *)modifiedDate { %log; NSDate * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setNFCPayload:(PKNFCPayload *)nfcPayload { %log; %orig; }
- (PKNFCPayload *)nfcPayload { %log; PKNFCPayload * r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL )isNFCPayloadEncrypted { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (NSData *)npkCompleteHash { %log; NSData * r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL )npkExpired { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL )npkHasBarcode { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL )npkSupportsHidingBarcode { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (PKBarcode *)npkWatchBarcode { %log; PKBarcode * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setOrganizationName:(NSString *)organizationName { %log; %orig; }
- (NSString *)organizationName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)partialFrontFaceImage { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (PKImage *)partialFrontFaceImagePlaceholder { %log; PKImage * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setPassLibraryMachServiceName:(NSString *)passLibraryMachServiceName { %log; %orig; }
- (NSString *)passLibraryMachServiceName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setPassType:(unsigned int )passType { %log; %orig; }
- (unsigned int )passType { %log; unsigned int  r = %orig; NSLog(@" = %u", r); return r; }
- (void)setPassTypeIdentifier:(NSString *)passTypeIdentifier { %log; %orig; }
- (NSString *)passTypeIdentifier { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setPassURL:(NSURL *)passURL { %log; %orig; }
- (NSURL *)passURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (PKPaymentPass *)paymentPass { %log; PKPaymentPass * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)pluralLocalizedName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRelevantDate:(NSDate *)relevantDate { %log; %orig; }
- (NSDate *)relevantDate { %log; NSDate * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRemotePass:(BOOL )remotePass { %log; %orig; }
- (BOOL )isRemotePass { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setRevoked:(BOOL )revoked { %log; %orig; }
- (BOOL )isRevoked { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setSequenceCounter:(NSNumber *)sequenceCounter { %log; %orig; }
- (NSNumber *)sequenceCounter { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setSerialNumber:(NSString *)serialNumber { %log; %orig; }
- (NSString *)serialNumber { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setSharingMethod:(int )sharingMethod { %log; %orig; }
- (int )sharingMethod { %log; int  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setSharingText:(NSString *)sharingText { %log; %orig; }
- (NSString *)sharingText { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setSharingURL:(NSURL *)sharingURL { %log; %orig; }
- (NSURL *)sharingURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (NSArray *)storeIdentifiers { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (int )style { %log; int  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setTeamID:(NSString *)teamID { %log; %orig; }
- (NSString *)teamID { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (int )transitType { %log; int  r = %orig; NSLog(@" = %d", r); return r; }
- (NSString *)uniqueID { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setUserInfo:(NSDictionary *)userInfo { %log; %orig; }
- (NSDictionary *)userInfo { %log; NSDictionary * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setVoided:(BOOL )voided { %log; %orig; }
- (BOOL )isVoided { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setWebLocationsURL:(NSURL *)webLocationsURL { %log; %orig; }
- (NSURL *)webLocationsURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setWebServiceURL:(NSURL *)webServiceURL { %log; %orig; }
- (NSURL *)webServiceURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
+ (unsigned int)defaultSettings { %log; unsigned int r = %orig; NSLog(@" = %u", r); return r; }
+ (BOOL)isValidObjectWithFileURL:(id)arg1 warnings:(id*)arg2 orError:(id*)arg3 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
+ (BOOL)supportsSecureCoding { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)_changeMessageForFieldKey:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_groupingIDFromPassDictionary:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_localizationKeyForMultipleDiff { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end