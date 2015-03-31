//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Notifications.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Notifications.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/engine/KeyValueStorage.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/notifications/NotificationsActor.h"

@interface ImActorModelModulesNotifications () {
 @public
  DKActorRef *notificationsActor_;
  DKSyncKeyValue *notificationsStorage_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesNotifications, notificationsActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesNotifications, notificationsStorage_, DKSyncKeyValue *)

@interface ImActorModelModulesNotifications_$1 () {
 @public
  ImActorModelModulesNotifications *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesNotifications_$1, this$0_, ImActorModelModulesNotifications *)


#line 16
@implementation ImActorModelModulesNotifications


#line 20
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self =
#line 21
  [super initWithImActorModelModulesModules:modules]) {
    
#line 22
    notificationsStorage_ = [[DKSyncKeyValue alloc] initWithDKKeyValueStorage:[((id<AMStorageProvider>) nil_chk([self storage])) createKeyValue:ImActorModelModulesBaseModule_get_STORAGE_NOTIFICATIONS_()]];
  }
  return self;
}


#line 25
- (void)run {
  
#line 26
  self->notificationsActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesNotificationsNotificationsActor_class_(), [[ImActorModelModulesNotifications_$1 alloc] initWithImActorModelModulesNotifications:self]) withNSString:
#line 31
  @"actor/notifications"];
}


#line 34
- (DKSyncKeyValue *)getNotificationsStorage {
  
#line 35
  return notificationsStorage_;
}


#line 38
- (void)onOwnReadWithAMPeer:(AMPeer *)peer
                   withLong:(jlong)fromDate {
  
#line 39
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_MessagesRead alloc] initWithAMPeer:peer withLong:fromDate]];
}


#line 42
- (void)onInMessageWithAMPeer:(AMPeer *)peer
                      withInt:(jint)sender
                     withLong:(jlong)sortDate
     withAMContentDescription:(AMContentDescription *)contentDescription {
  
#line 43
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_NewMessage alloc] initWithAMPeer:peer withInt:sender withLong:sortDate withAMContentDescription:contentDescription]];
}


#line 46
- (void)onConversationOpenWithAMPeer:(AMPeer *)peer {
  
#line 47
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnConversationVisible alloc] initWithAMPeer:peer]];
}


#line 50
- (void)onConversationCloseWithAMPeer:(AMPeer *)peer {
  
#line 51
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnConversationHidden alloc] initWithAMPeer:peer]];
}


#line 54
- (void)onDialogsOpen {
  
#line 55
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnDialogsVisible alloc] init]];
}


#line 58
- (void)onDialogsClosed {
  
#line 59
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnDialogsHidden alloc] init]];
}


#line 62
- (void)onAppVisible {
  
#line 63
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnAppVisible alloc] init]];
}


#line 66
- (void)onAppHidden {
  
#line 67
  [((DKActorRef *) nil_chk(notificationsActor_)) sendWithId:[[ImActorModelModulesNotificationsNotificationsActor_OnAppHidden alloc] init]];
}

- (void)copyAllFieldsTo:(ImActorModelModulesNotifications *)other {
  [super copyAllFieldsTo:other];
  other->notificationsActor_ = notificationsActor_;
  other->notificationsStorage_ = notificationsStorage_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesNotifications)

@implementation ImActorModelModulesNotifications_$1


#line 28
- (ImActorModelModulesNotificationsNotificationsActor *)create {
  
#line 29
  return [[ImActorModelModulesNotificationsNotificationsActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesNotifications:(ImActorModelModulesNotifications *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesNotifications_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesNotifications_$1)