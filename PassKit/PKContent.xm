#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKContent
- (void)setAppLaunchURL:(NSURL *)appLaunchURL { %log; %orig; }
- (NSURL *)appLaunchURL { %log; NSURL * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setBarcode:(PKBarcode *)barcode { %log; %orig; }
- (PKBarcode *)barcode { %log; PKBarcode * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setLocalizedDescription:(NSString *)localizedDescription { %log; %orig; }
- (NSString *)localizedDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setStoreIdentifiers:(NSArray *)storeIdentifiers { %log; %orig; }
- (NSArray *)storeIdentifiers { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
+ (id)contentWithFileURL:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
+ (BOOL)supportsSecureCoding { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)encodeWithCoder:(id)arg1 { %log; %orig; }
- (void)flushFormattedFieldValues { %log; %orig; }
- (id)initWithCoder:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithDictionary:(id)arg1 bundle:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end