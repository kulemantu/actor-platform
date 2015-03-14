//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/qualified/TypeOfBiometricData.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/x509/qualified/TypeOfBiometricData.h"

@implementation OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData

+ (OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData_getInstanceWithId_(obj);
}

- (instancetype)initWithInt:(jint)predefinedBiometricType {
  if (self = [super init]) {
    if (predefinedBiometricType == OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData_PICTURE || predefinedBiometricType == OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData_HANDWRITTEN_SIGNATURE) {
      obj_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:predefinedBiometricType];
    }
    else {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"unknow PredefinedBiometricType : ", predefinedBiometricType)];
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)BiometricDataID {
  if (self = [super init]) {
    obj_ = BiometricDataID;
  }
  return self;
}

- (jboolean)isPredefined {
  return [obj_ isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]];
}

- (jint)getPredefinedBiometricType {
  return [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast(obj_, [OrgBouncycastleAsn1ASN1Integer class])))) getValue])) intValue];
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getBiometricDataOid {
  return (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast(obj_, [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(obj_)) toASN1Primitive];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData *)other {
  [super copyAllFieldsTo:other];
  other->obj_ = obj_;
}

@end

OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData *OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData class]]) {
    return (OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData *) check_class_cast(obj, [OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData class]);
  }
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
    OrgBouncycastleAsn1ASN1Integer *predefinedBiometricTypeObj = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_(obj);
    jint predefinedBiometricType = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(predefinedBiometricTypeObj)) getValue])) intValue];
    return [[OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData alloc] initWithInt:predefinedBiometricType];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
    OrgBouncycastleAsn1ASN1ObjectIdentifier *BiometricDataID = OrgBouncycastleAsn1ASN1ObjectIdentifier_getInstanceWithId_(obj);
    return [[OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData alloc] initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:BiometricDataID];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"unknown object in getInstance"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509QualifiedTypeOfBiometricData)