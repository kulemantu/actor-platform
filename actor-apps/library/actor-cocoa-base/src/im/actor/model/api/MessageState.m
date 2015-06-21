//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/MessageState.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/MessageState.h"
#include "java/io/IOException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface APMessageStateEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void APMessageStateEnum_initWithInt_withNSString_withInt_(APMessageStateEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static APMessageStateEnum *new_APMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(APMessageStateEnum)

APMessageStateEnum *APMessageStateEnum_values_[4];

@implementation APMessageStateEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  APMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}

- (jint)getValue {
  return value_;
}

+ (APMessageStateEnum *)parseWithInt:(jint)value {
  return APMessageStateEnum_parseWithInt_(value);
}

IOSObjectArray *APMessageStateEnum_values() {
  APMessageStateEnum_initialize();
  return [IOSObjectArray arrayWithObjects:APMessageStateEnum_values_ count:4 type:APMessageStateEnum_class_()];
}

+ (IOSObjectArray *)values {
  return APMessageStateEnum_values();
}

+ (APMessageStateEnum *)valueOfWithNSString:(NSString *)name {
  return APMessageStateEnum_valueOfWithNSString_(name);
}

APMessageStateEnum *APMessageStateEnum_valueOfWithNSString_(NSString *name) {
  APMessageStateEnum_initialize();
  for (int i = 0; i < 4; i++) {
    APMessageStateEnum *e = APMessageStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [APMessageStateEnum class]) {
    APMessageStateEnum_SENT = new_APMessageStateEnum_initWithInt_withNSString_withInt_(1, @"SENT", 0);
    APMessageStateEnum_RECEIVED = new_APMessageStateEnum_initWithInt_withNSString_withInt_(2, @"RECEIVED", 1);
    APMessageStateEnum_READ = new_APMessageStateEnum_initWithInt_withNSString_withInt_(3, @"READ", 2);
    APMessageStateEnum_UNSUPPORTED_VALUE = new_APMessageStateEnum_initWithInt_withNSString_withInt_(-1, @"UNSUPPORTED_VALUE", 3);
    J2OBJC_SET_INITIALIZED(APMessageStateEnum)
  }
}

@end

void APMessageStateEnum_initWithInt_withNSString_withInt_(APMessageStateEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->value_ = value;
}

APMessageStateEnum *new_APMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  APMessageStateEnum *self = [APMessageStateEnum alloc];
  APMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}

APMessageStateEnum *APMessageStateEnum_parseWithInt_(jint value) {
  APMessageStateEnum_initialize();
  switch (value) {
    case 1:
    return APMessageStateEnum_SENT;
    case 2:
    return APMessageStateEnum_RECEIVED;
    case 3:
    return APMessageStateEnum_READ;
    default:
    return APMessageStateEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APMessageStateEnum)