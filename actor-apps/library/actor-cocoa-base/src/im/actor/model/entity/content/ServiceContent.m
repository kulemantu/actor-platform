//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceContent.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"

@interface AMServiceContent () {
 @public
  NSString *compatText_;
}

@end

J2OBJC_FIELD_SETTER(AMServiceContent, compatText_, NSString *)

@implementation AMServiceContent

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer {
  AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

- (NSString *)getCompatText {
  return compatText_;
}

@end

void AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMServiceContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  (void) AMAbsContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  self->compatText_ = [((APServiceMessage *) nil_chk(((APServiceMessage *) check_class_cast([((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(contentContainer)) getMessage], [APServiceMessage class])))) getText];
}

AMServiceContent *new_AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  AMServiceContent *self = [AMServiceContent alloc];
  AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceContent)