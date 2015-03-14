//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/isismtt/x509/Restriction.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/isismtt/x509/Restriction.h"
#include "org/bouncycastle/asn1/x500/DirectoryString.h"

@interface OrgBouncycastleAsn1IsismttX509Restriction () {
 @public
  OrgBouncycastleAsn1X500DirectoryString *restriction_;
}
- (instancetype)initWithOrgBouncycastleAsn1X500DirectoryString:(OrgBouncycastleAsn1X500DirectoryString *)restriction;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IsismttX509Restriction, restriction_, OrgBouncycastleAsn1X500DirectoryString *)

@implementation OrgBouncycastleAsn1IsismttX509Restriction

+ (OrgBouncycastleAsn1IsismttX509Restriction *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1IsismttX509Restriction_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1X500DirectoryString:(OrgBouncycastleAsn1X500DirectoryString *)restriction {
  if (self = [super init]) {
    self->restriction_ = restriction;
  }
  return self;
}

- (instancetype)initWithNSString:(NSString *)restriction {
  if (self = [super init]) {
    self->restriction_ = [[OrgBouncycastleAsn1X500DirectoryString alloc] initWithNSString:restriction];
  }
  return self;
}

- (OrgBouncycastleAsn1X500DirectoryString *)getRestriction {
  return restriction_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [((OrgBouncycastleAsn1X500DirectoryString *) nil_chk(restriction_)) toASN1Primitive];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1IsismttX509Restriction *)other {
  [super copyAllFieldsTo:other];
  other->restriction_ = restriction_;
}

@end

OrgBouncycastleAsn1IsismttX509Restriction *OrgBouncycastleAsn1IsismttX509Restriction_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1IsismttX509Restriction_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1IsismttX509Restriction class]]) {
    return (OrgBouncycastleAsn1IsismttX509Restriction *) check_class_cast(obj, [OrgBouncycastleAsn1IsismttX509Restriction class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1IsismttX509Restriction alloc] initWithOrgBouncycastleAsn1X500DirectoryString:OrgBouncycastleAsn1X500DirectoryString_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IsismttX509Restriction)