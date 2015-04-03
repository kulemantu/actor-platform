//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Modules.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Modules.java"

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/LocaleProvider.h"
#include "im/actor/model/NetworkProvider.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/ThreadingProvider.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/i18n/I18nEngine.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Groups.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/Profile.h"
#include "im/actor/model/modules/Pushes.h"
#include "im/actor/model/modules/Settings.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/modules/utils/PreferenceApiStorage.h"
#include "im/actor/model/network/ActorApi.h"
#include "im/actor/model/network/Endpoints.h"

@interface ImActorModelModulesModules () {
 @public
  AMConfiguration *configuration_;
  AMI18nEngine *i18nEngine_;
  AMActorApi *actorApi_;
  ImActorModelModulesAuth *auth_;
  ImActorModelModulesAppStateModule *appStateModule_;
  id<DKPreferencesStorage> preferences_;
  ImActorModelModulesUsers *users_;
  ImActorModelModulesGroups *groups_;
  ImActorModelModulesUpdates *updates_;
  ImActorModelModulesMessages *messages_;
  ImActorModelModulesPushes *pushes_;
  ImActorModelModulesPresence *presence_;
  ImActorModelModulesTyping *typing_;
  ImActorModelModulesFiles *filesModule_;
  ImActorModelModulesContacts *contacts_;
  ImActorModelModulesNotifications *notifications_;
  ImActorModelModulesSettings *settings_;
  ImActorModelModulesProfile *profile_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesModules, configuration_, AMConfiguration *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, i18nEngine_, AMI18nEngine *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, actorApi_, AMActorApi *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, auth_, ImActorModelModulesAuth *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, appStateModule_, ImActorModelModulesAppStateModule *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, preferences_, id<DKPreferencesStorage>)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, users_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, groups_, ImActorModelModulesGroups *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, updates_, ImActorModelModulesUpdates *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, messages_, ImActorModelModulesMessages *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, pushes_, ImActorModelModulesPushes *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, presence_, ImActorModelModulesPresence *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, typing_, ImActorModelModulesTyping *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, filesModule_, ImActorModelModulesFiles *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, contacts_, ImActorModelModulesContacts *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, notifications_, ImActorModelModulesNotifications *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, settings_, ImActorModelModulesSettings *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, profile_, ImActorModelModulesProfile *)

@interface ImActorModelModulesModules_$1 () {
 @public
  ImActorModelModulesModules *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesModules_$1, this$0_, ImActorModelModulesModules *)


#line 15
@implementation ImActorModelModulesModules


#line 36
- (instancetype)initWithAMConfiguration:(AMConfiguration *)configuration {
  if (self = [super init]) {
    
#line 37
    self->configuration_ = configuration;
    
#line 38
    jlong start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk(configuration)) getThreadingProvider])) getActorTime];
    
#line 39
    self->i18nEngine_ = [[AMI18nEngine alloc] initWithAMLocaleProvider:[configuration getLocaleProvider] withImActorModelModulesModules:self];
    
#line 40
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.1 in ", ([((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 41
    self->preferences_ = [((id<AMStorageProvider>) nil_chk([configuration getStorageProvider])) createPreferencesStorage];
    
#line 42
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.2 in ", ([((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 43
    start = [((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime];
    
#line 44
    self->actorApi_ = [[AMActorApi alloc] initWithAMEndpoints:[[AMEndpoints alloc] initWithAMConnectionEndpointArray:[configuration getEndpoints]] withAMAuthKeyStorage:
#line 45
    [[ImActorModelModulesUtilsPreferenceApiStorage alloc] initWithDKPreferencesStorage:preferences_] withAMActorApiCallback:
#line 46
    [[ImActorModelModulesModules_$1 alloc] initWithImActorModelModulesModules:self] withAMNetworkProvider:
#line 68
    [configuration getNetworkProvider]];
    
#line 69
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.3 in ", ([((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 70
    start = [((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime];
    
#line 71
    self->auth_ = [[ImActorModelModulesAuth alloc] initWithImActorModelModulesModules:self];
    
#line 72
    self->pushes_ = [[ImActorModelModulesPushes alloc] initWithImActorModelModulesModules:self];
    
#line 73
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.4 in ", ([((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 74
    start = [((id<AMThreadingProvider>) nil_chk([configuration getThreadingProvider])) getActorTime];
    
#line 75
    self->appStateModule_ = [[ImActorModelModulesAppStateModule alloc] initWithImActorModelModulesModules:self];
  }
  return self;
}


#line 78
- (void)run {
  
#line 79
  [((ImActorModelModulesAuth *) nil_chk(self->auth_)) run];
}


#line 82
- (void)onLoggedIn {
  
#line 83
  jlong start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk(configuration_)) getThreadingProvider])) getActorTime];
  users_ = [[ImActorModelModulesUsers alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.1 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  groups_ = [[ImActorModelModulesGroups alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.2 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  messages_ = [[ImActorModelModulesMessages alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.3 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  updates_ = [[ImActorModelModulesUpdates alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.4 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  presence_ = [[ImActorModelModulesPresence alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.5 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  typing_ = [[ImActorModelModulesTyping alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.6 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  filesModule_ = [[ImActorModelModulesFiles alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.6.2 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  notifications_ = [[ImActorModelModulesNotifications alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.7 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  contacts_ = [[ImActorModelModulesContacts alloc] initWithImActorModelModulesModules:self];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.8 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  settings_ = [[ImActorModelModulesSettings alloc] initWithImActorModelModulesModules:self];
  profile_ = [[ImActorModelModulesProfile alloc] initWithImActorModelModulesModules:self];
  
#line 114
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.8.2 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  [filesModule_ run];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.9 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  [notifications_ run];
  [((ImActorModelModulesAppStateModule *) nil_chk(appStateModule_)) run];
  [contacts_ run];
  [messages_ run];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.10 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  [updates_ run];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.11 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  [presence_ run];
  AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage6.12 in ", ([((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime] - start), @" ms"));
  start = [((id<AMThreadingProvider>) nil_chk([configuration_ getThreadingProvider])) getActorTime];
  
#line 133
  [presence_ onAppVisible];
  [notifications_ onAppVisible];
}


#line 137
- (id<DKPreferencesStorage>)getPreferences {
  
#line 138
  return preferences_;
}


#line 141
- (AMConfiguration *)getConfiguration {
  
#line 142
  return configuration_;
}


#line 145
- (ImActorModelModulesAuth *)getAuthModule {
  
#line 146
  return auth_;
}


#line 149
- (ImActorModelModulesUsers *)getUsersModule {
  
#line 150
  return users_;
}


#line 153
- (ImActorModelModulesGroups *)getGroupsModule {
  
#line 154
  return groups_;
}


#line 157
- (ImActorModelModulesMessages *)getMessagesModule {
  
#line 158
  return messages_;
}


#line 161
- (ImActorModelModulesUpdates *)getUpdatesModule {
  
#line 162
  return updates_;
}


#line 165
- (ImActorModelModulesTyping *)getTypingModule {
  
#line 166
  return typing_;
}


#line 169
- (ImActorModelModulesPresence *)getPresenceModule {
  
#line 170
  return presence_;
}


#line 173
- (AMActorApi *)getActorApi {
  
#line 174
  return actorApi_;
}


#line 177
- (AMI18nEngine *)getI18nEngine {
  
#line 178
  return i18nEngine_;
}


#line 181
- (ImActorModelModulesContacts *)getContactsModule {
  
#line 182
  return contacts_;
}


#line 185
- (ImActorModelModulesFiles *)getFilesModule {
  
#line 186
  return filesModule_;
}


#line 189
- (ImActorModelModulesNotifications *)getNotifications {
  
#line 190
  return notifications_;
}


#line 193
- (ImActorModelModulesSettings *)getSettings {
  
#line 194
  return settings_;
}


#line 197
- (ImActorModelModulesProfile *)getProfile {
  
#line 198
  return profile_;
}


#line 201
- (ImActorModelModulesAppStateModule *)getAppStateModule {
  
#line 202
  return appStateModule_;
}


#line 205
- (ImActorModelModulesPushes *)getPushes {
  
#line 206
  return pushes_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesModules *)other {
  [super copyAllFieldsTo:other];
  other->configuration_ = configuration_;
  other->i18nEngine_ = i18nEngine_;
  other->actorApi_ = actorApi_;
  other->auth_ = auth_;
  other->appStateModule_ = appStateModule_;
  other->preferences_ = preferences_;
  other->users_ = users_;
  other->groups_ = groups_;
  other->updates_ = updates_;
  other->messages_ = messages_;
  other->pushes_ = pushes_;
  other->presence_ = presence_;
  other->typing_ = typing_;
  other->filesModule_ = filesModule_;
  other->contacts_ = contacts_;
  other->notifications_ = notifications_;
  other->settings_ = settings_;
  other->profile_ = profile_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules)

@implementation ImActorModelModulesModules_$1


#line 48
- (void)onAuthIdInvalidatedWithLong:(jlong)authKey {
}


#line 53
- (void)onNewSessionCreated {
  
#line 54
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onNewSessionCreated];
  }
  if (this$0_->presence_ != nil) {
    [this$0_->presence_ onNewSessionCreated];
  }
}


#line 63
- (void)onUpdateReceivedWithId:(id)obj {
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onUpdateReceivedWithId:obj];
  }
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesModules_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules_$1)
