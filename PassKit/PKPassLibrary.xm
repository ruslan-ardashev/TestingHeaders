#import <UIKit/UIKit.h>

@class PKImage, PKBarcode, PKPassDisplayProfile, PKNFCPayload, PKPaymentPass;

@protocol PKPassLibraryDelegate 
@end

%hook PKPassLibrary
- (void)setDelegate:(id)delegate { %log; %orig; }
- (id)delegate { %log; id r = %orig; NSLog(@" = %@", r); return r; }
+ (void)endAutomaticPassPresentationSuppressionWithRequestToken:(unsigned int)arg1 { %log; %orig; }
+ (BOOL)isPassLibraryAvailable { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
+ (BOOL)isPaymentPassActivationAvailable { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
+ (BOOL)isSuppressingAutomaticPassPresentation { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
+ (unsigned int)requestAutomaticPassPresentationSuppressionWithResponseHandler:(id /* block */)arg1 { %log; unsigned int r = %orig; NSLog(@" = %u", r); return r; }
- (void)_activatePaymentPass:(id)arg1 withActivationCode:(id)arg2 activationData:(id)arg3 completion:(id /* block */)arg4 { %log; %orig; }
- (void)_applyDataAccessorToObject:(id)arg1 { %log; %orig; }
- (void)_applyDataAccessorToObjects:(id)arg1 { %log; %orig; }
- (id /* block */)_errorHandlerWithCompletion:(id /* block */)arg1 { %log; id /* block */ r = %orig; NSLog(@" = %@", r); return r; }
- (id /* block */)_errorHandlerWithSemaphore:(id)arg1 { %log; id /* block */ r = %orig; NSLog(@" = %@", r); return r; }
- (id)_extendedRemoteObjectProxy { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_extendedRemoteObjectProxyWithErrorHandler:(id /* block */)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_extendedRemoteObjectProxyWithFailureHandler:(id /* block */)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_extendedRemoteObjectProxyWithSemaphore:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)_getArchivedObjectWithUniqueID:(id)arg1 completion:(id /* block */)arg2 { %log; %orig; }
- (void)_getPassWithUniqueID:(id)arg1 completion:(id /* block */)arg2 { %log; %orig; }
- (void)_getPassesAndCatalogOfPassTypes:(unsigned int)arg1 limitResults:(BOOL)arg2 withRetries:(unsigned int)arg3 handler:(id /* block */)arg4 { %log; %orig; }
- (BOOL)_hasRemoteLibrary { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)_passesOfType:(unsigned int)arg1 withRetries:(unsigned int)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_passesWithRetries:(unsigned int)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)_postLibraryChangeWithUserInfo:(id)arg1 { %log; %orig; }
- (id)_remoteObjectProxy { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_remoteObjectProxyWithErrorHandler:(id /* block */)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_remoteObjectProxyWithFailureHandler:(id /* block */)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)_remoteObjectProxyWithSemaphore:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)activatePaymentPass:(id)arg1 withActivationCode:(id)arg2 completion:(id /* block */)arg3 { %log; %orig; }
- (void)activatePaymentPass:(id)arg1 withActivationData:(id)arg2 completion:(id /* block */)arg3 { %log; %orig; }
- (void)addFakeBulletin { %log; %orig; }
- (void)addPasses:(id)arg1 withCompletionHandler:(id /* block */)arg2 { %log; %orig; }
- (id)archiveForObjectWithUniqueID:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL)canAddPassOfType:(unsigned int)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL)canAddPaymentPassWithPrimaryAccountIdentifier:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)catalogChanged:(id)arg1 withNewPasses:(id)arg2 { %log; %orig; }
- (BOOL)containsPass:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (id)diffForPassBulletinWithRecordID:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)enabledValueAddedServicePassesWithCompletion:(id /* block */)arg1 { %log; %orig; }
- (void)fetchContentForUniqueID:(id)arg1 withCompletion:(id /* block */)arg2 { %log; %orig; }
- (void)fetchCurrentRelevantPassInfo:(id /* block */)arg1 { %log; %orig; }
- (void)fetchHasCandidatePasses:(id /* block */)arg1 { %log; %orig; }
- (void)fetchImageSetForUniqueID:(id)arg1 ofType:(int)arg2 displayProfile:(id)arg3 withCompletion:(id /* block */)arg4 { %log; %orig; }
- (void)getContainmentStatusAndSettingsForPass:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)getPassUniqueIdentifiersForFieldProperties:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)getPassesAndCatalog:(BOOL)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)getPassesAndCatalogOfPassTypes:(unsigned int)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)getPassesWithUniqueIdentifiers:(id)arg1 handler:(id /* block */)arg2 { %log; %orig; }
- (void)getRouteRelevantPassesFromLocation:(id)arg1 handler:(id /* block */)arg2 { %log; %orig; }
- (void)hasInAppPaymentPassesForNetworks:(id)arg1 capabilities:(unsigned int)arg2 withHandler:(id /* block */)arg3 { %log; %orig; }
- (void)hasInAppPaymentPassesForNetworks:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (BOOL)hasPassesOfType:(unsigned int)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)inAppPaymentPassesForNetworks:(id)arg1 capabilities:(unsigned int)arg2 withHandler:(id /* block */)arg3 { %log; %orig; }
- (void)inAppPaymentPassesForNetworks:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)arg1 withHandler:(id /* block */)arg2 { %log; %orig; }
- (void)ingestPassData:(id)arg1 settings:(id)arg2 completion:(id /* block */)arg3 { %log; %orig; }
- (id)init { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithMachServiceName:(id)arg1 resumeNotificationName:(id)arg2 extendedInterface:(BOOL)arg3 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)introduceDatabaseIntegrityProblem { %log; %orig; }
- (BOOL)isPaymentPassActivationAvailable { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL)isRemovingPassesOfType:(unsigned int)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)logDelayExitReasons { %log; %orig; }
- (BOOL)migrateData { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)noteAccountChanged { %log; %orig; }
- (void)noteAccountDeleted { %log; %orig; }
- (void)noteObjectSharedWithUniqueID:(id)arg1 { %log; %orig; }
- (void)notifyPassUsed:(id)arg1 fromSource:(int)arg2 { %log; %orig; }
- (void)nukeDatabaseAndExit { %log; %orig; }
- (void)openPaymentSetup { %log; %orig; }
- (void)passAdded:(id)arg1 { %log; %orig; }
- (void)passRemoved:(id)arg1 { %log; %orig; }
- (void)passUpdated:(id)arg1 { %log; %orig; }
- (id)passWithPassTypeIdentifier:(id)arg1 serialNumber:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)passWithUniqueID:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)passes { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)passesOfType:(unsigned int)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)recomputeRelevantPassesWithSearchMode:(int)arg1 { %log; %orig; }
- (id)remotePaymentPasses { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)removePass:(id)arg1 { %log; %orig; }
- (void)removePassWithUniqueID:(id)arg1 { %log; %orig; }
- (void)removePassesOfType:(unsigned int)arg1 { %log; %orig; }
- (void)removingPassesOfType:(unsigned int)arg1 didFinishWithSuccess:(BOOL)arg2 { %log; %orig; }
- (void)removingPassesOfType:(unsigned int)arg1 didUpdateWithProgress:(double)arg2 { %log; %orig; }
- (BOOL)replacePassWithPass:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)requestContactlessInterfaceSuppressionFromUserWithCompletion:(id /* block */)arg1 { %log; %orig; }
- (void)requestUpdateOfObjectWithUniqueID:(id)arg1 completion:(id /* block */)arg2 { %log; %orig; }
- (void)sendUserEditedCatalog:(id)arg1 { %log; %orig; }
- (void)shuffleGroups:(int)arg1 { %log; %orig; }
- (void)updateSettings:(unsigned int)arg1 forObjectWithUniqueID:(id)arg2 { %log; %orig; }
%end
