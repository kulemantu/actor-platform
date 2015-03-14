//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/SignaturePolicyIdentifier.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Null.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/BERTags.h"
#include "org/bouncycastle/asn1/DERNull.h"
#include "org/bouncycastle/asn1/esf/SignaturePolicyId.h"
#include "org/bouncycastle/asn1/esf/SignaturePolicyIdentifier.h"

@interface OrgBouncycastleAsn1EsfSignaturePolicyIdentifier () {
 @public
  OrgBouncycastleAsn1EsfSignaturePolicyId *signaturePolicyId_;
  jboolean isSignaturePolicyImplied__;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignaturePolicyIdentifier, signaturePolicyId_, OrgBouncycastleAsn1EsfSignaturePolicyId *)

@implementation OrgBouncycastleAsn1EsfSignaturePolicyIdentifier

+ (OrgBouncycastleAsn1EsfSignaturePolicyIdentifier *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EsfSignaturePolicyIdentifier_getInstanceWithId_(obj);
}

- (instancetype)init {
  if (self = [super init]) {
    self->isSignaturePolicyImplied__ = YES;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EsfSignaturePolicyId:(OrgBouncycastleAsn1EsfSignaturePolicyId *)signaturePolicyId {
  if (self = [super init]) {
    self->signaturePolicyId_ = signaturePolicyId;
    self->isSignaturePolicyImplied__ = NO;
  }
  return self;
}

- (OrgBouncycastleAsn1EsfSignaturePolicyId *)getSignaturePolicyId {
  return signaturePolicyId_;
}

- (jboolean)isSignaturePolicyImplied {
  return isSignaturePolicyImplied__;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  if (isSignaturePolicyImplied__) {
    return OrgBouncycastleAsn1DERNull_get_INSTANCE_();
  }
  else {
    return [((OrgBouncycastleAsn1EsfSignaturePolicyId *) nil_chk(signaturePolicyId_)) toASN1Primitive];
  }
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EsfSignaturePolicyIdentifier *)other {
  [super copyAllFieldsTo:other];
  other->signaturePolicyId_ = signaturePolicyId_;
  other->isSignaturePolicyImplied__ = isSignaturePolicyImplied__;
}

@end

OrgBouncycastleAsn1EsfSignaturePolicyIdentifier *OrgBouncycastleAsn1EsfSignaturePolicyIdentifier_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EsfSignaturePolicyIdentifier_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1EsfSignaturePolicyIdentifier class]]) {
    return (OrgBouncycastleAsn1EsfSignaturePolicyIdentifier *) check_class_cast(obj, [OrgBouncycastleAsn1EsfSignaturePolicyIdentifier class]);
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Null class]] || OrgBouncycastleAsn1ASN1Object_hasEncodedTagValueWithId_withInt_(obj, OrgBouncycastleAsn1BERTags_NULL)) {
    return [[OrgBouncycastleAsn1EsfSignaturePolicyIdentifier alloc] init];
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1EsfSignaturePolicyIdentifier alloc] initWithOrgBouncycastleAsn1EsfSignaturePolicyId:OrgBouncycastleAsn1EsfSignaturePolicyId_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EsfSignaturePolicyIdentifier)