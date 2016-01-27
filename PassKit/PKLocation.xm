#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKLocation
- (void)setName:(NSString *)name { %log; %orig; }
- (NSString *)name { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRelevantText:(NSString *)relevantText { %log; %orig; }
- (NSString *)relevantText { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
+ (BOOL)supportsSecureCoding { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)CLLocation { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (double)altitude { %log; double r = %orig; NSLog(@" = %f", r); return r; }
- (id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)encodeWithCoder:(id)arg1 { %log; %orig; }
- (BOOL)hasAltitude { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL)hasEqualCoordinatesToLocation:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)initWithCoder:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL)isEqual:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (double)latitude { %log; double r = %orig; NSLog(@" = %f", r); return r; }
- (double)longitude { %log; double r = %orig; NSLog(@" = %f", r); return r; }
- (double)maxDistance { %log; double r = %orig; NSLog(@" = %f", r); return r; }
%end