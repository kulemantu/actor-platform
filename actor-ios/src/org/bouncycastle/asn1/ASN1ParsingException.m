//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1ParsingException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "org/bouncycastle/asn1/ASN1ParsingException.h"

@interface OrgBouncycastleAsn1ASN1ParsingException () {
 @public
  JavaLangThrowable *cause_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1ASN1ParsingException, cause_, JavaLangThrowable *)

@implementation OrgBouncycastleAsn1ASN1ParsingException

- (instancetype)initWithNSString:(NSString *)message {
  return [super initWithNSString:message];
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  if (self = [super initWithNSString:message]) {
    self->cause_ = cause;
  }
  return self;
}

- (JavaLangThrowable *)getCause {
  return cause_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1ASN1ParsingException *)other {
  [super copyAllFieldsTo:other];
  other->cause_ = cause_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1ASN1ParsingException)