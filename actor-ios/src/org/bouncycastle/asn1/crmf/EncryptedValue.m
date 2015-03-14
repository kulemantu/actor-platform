//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/EncryptedValue.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/crmf/EncryptedValue.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

__attribute__((unused)) static void OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1CrmfEncryptedValue *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint tagNo, id<OrgBouncycastleAsn1ASN1Encodable> obj);

@interface OrgBouncycastleAsn1CrmfEncryptedValue () {
 @public
  OrgBouncycastleAsn1X509AlgorithmIdentifier *intendedAlg_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *symmAlg_;
  OrgBouncycastleAsn1DERBitString *encSymmKey_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *keyAlg_;
  OrgBouncycastleAsn1ASN1OctetString *valueHint_;
  OrgBouncycastleAsn1DERBitString *encValue_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

- (void)addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                      withInt:(jint)tagNo
                         withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, intendedAlg_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, symmAlg_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, encSymmKey_, OrgBouncycastleAsn1DERBitString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, keyAlg_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, valueHint_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncryptedValue, encValue_, OrgBouncycastleAsn1DERBitString *)

@implementation OrgBouncycastleAsn1CrmfEncryptedValue

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    jint index = 0;
    while ([[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:index] isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]]) {
      OrgBouncycastleAsn1ASN1TaggedObject *tObj = (OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:index], [OrgBouncycastleAsn1ASN1TaggedObject class]);
      switch ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(tObj)) getTagNo]) {
        case 0:
        intendedAlg_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, NO);
        break;
        case 1:
        symmAlg_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, NO);
        break;
        case 2:
        encSymmKey_ = OrgBouncycastleAsn1DERBitString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, NO);
        break;
        case 3:
        keyAlg_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, NO);
        break;
        case 4:
        valueHint_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, NO);
        break;
      }
      index++;
    }
    encValue_ = OrgBouncycastleAsn1DERBitString_getInstanceWithId_([seq getObjectAtWithInt:index]);
  }
  return self;
}

+ (OrgBouncycastleAsn1CrmfEncryptedValue *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CrmfEncryptedValue_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)intendedAlg
                    withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)symmAlg
                               withOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)encSymmKey
                    withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)keyAlg
                            withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)valueHint
                               withOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)encValue {
  if (self = [super init]) {
    if (encValue == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'encValue' cannot be null"];
    }
    self->intendedAlg_ = intendedAlg;
    self->symmAlg_ = symmAlg;
    self->encSymmKey_ = encSymmKey;
    self->keyAlg_ = keyAlg;
    self->valueHint_ = valueHint;
    self->encValue_ = encValue;
  }
  return self;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getIntendedAlg {
  return intendedAlg_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getSymmAlg {
  return symmAlg_;
}

- (OrgBouncycastleAsn1DERBitString *)getEncSymmKey {
  return encSymmKey_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getKeyAlg {
  return keyAlg_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getValueHint {
  return valueHint_;
}

- (OrgBouncycastleAsn1DERBitString *)getEncValue {
  return encValue_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 0, intendedAlg_);
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 1, symmAlg_);
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 2, encSymmKey_);
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 3, keyAlg_);
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 4, valueHint_);
  [v addWithOrgBouncycastleAsn1ASN1Encodable:encValue_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                      withInt:(jint)tagNo
                         withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj {
  OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, tagNo, obj);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CrmfEncryptedValue *)other {
  [super copyAllFieldsTo:other];
  other->intendedAlg_ = intendedAlg_;
  other->symmAlg_ = symmAlg_;
  other->encSymmKey_ = encSymmKey_;
  other->keyAlg_ = keyAlg_;
  other->valueHint_ = valueHint_;
  other->encValue_ = encValue_;
}

@end

OrgBouncycastleAsn1CrmfEncryptedValue *OrgBouncycastleAsn1CrmfEncryptedValue_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CrmfEncryptedValue_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CrmfEncryptedValue class]]) {
    return (OrgBouncycastleAsn1CrmfEncryptedValue *) check_class_cast(o, [OrgBouncycastleAsn1CrmfEncryptedValue class]);
  }
  else if (o != nil) {
    return [[OrgBouncycastleAsn1CrmfEncryptedValue alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

void OrgBouncycastleAsn1CrmfEncryptedValue_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1CrmfEncryptedValue *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint tagNo, id<OrgBouncycastleAsn1ASN1Encodable> obj) {
  if (obj != nil) {
    [((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:tagNo withOrgBouncycastleAsn1ASN1Encodable:obj]];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CrmfEncryptedValue)