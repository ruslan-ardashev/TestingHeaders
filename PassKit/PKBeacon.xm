#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKBeacon
- (void)setMajor:(NSNumber *)major { %log; %orig; }
- (NSNumber *)major { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setMinor:(NSNumber *)minor { %log; %orig; }
- (NSNumber *)minor { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setName:(NSString *)name { %log; %orig; }
- (NSString *)name { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setProximityUUID:(NSUUID *)proximityUUID { %log; %orig; }
- (NSUUID *)proximityUUID { %log; NSUUID * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRelevantText:(NSString *)relevantText { %log; %orig; }
- (NSString *)relevantText { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
+ (BOOL)supportsSecureCoding { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)encodeWithCoder:(id)arg1 { %log; %orig; }
- (id)initWithCoder:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end