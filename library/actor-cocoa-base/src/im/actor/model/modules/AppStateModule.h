//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/AppStateModule.java
//

#ifndef _ImActorModelModulesAppStateModule_H_
#define _ImActorModelModulesAppStateModule_H_

@class AMAppStateVM;
@class DKActorRef;
@class ImActorModelModulesModules;
@class ImActorModelModulesStateListsStatesActor;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/modules/BaseModule.h"

@interface ImActorModelModulesAppStateModule : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)run;

- (void)onDialogsUpdateWithBoolean:(jboolean)isEmpty;

- (void)onContactsUpdateWithBoolean:(jboolean)isEmpty;

- (void)onBookImported;

- (void)onContactsLoaded;

- (void)onDialogsLoaded;

- (AMAppStateVM *)getAppStateVM;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesAppStateModule)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesAppStateModule)

@interface ImActorModelModulesAppStateModule_$1 : NSObject < DKActorCreator > {
}

- (ImActorModelModulesStateListsStatesActor *)create;

- (instancetype)initWithImActorModelModulesAppStateModule:(ImActorModelModulesAppStateModule *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesAppStateModule_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesAppStateModule_$1)

#endif // _ImActorModelModulesAppStateModule_H_
