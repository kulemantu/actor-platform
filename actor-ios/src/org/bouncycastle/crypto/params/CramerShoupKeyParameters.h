//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/CramerShoupKeyParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsCramerShoupKeyParameters_H_
#define _OrgBouncycastleCryptoParamsCramerShoupKeyParameters_H_

@class OrgBouncycastleCryptoParamsCramerShoupParameters;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/params/AsymmetricKeyParameter.h"

@interface OrgBouncycastleCryptoParamsCramerShoupKeyParameters : OrgBouncycastleCryptoParamsAsymmetricKeyParameter {
}

- (instancetype)initWithBoolean:(jboolean)isPrivate
withOrgBouncycastleCryptoParamsCramerShoupParameters:(OrgBouncycastleCryptoParamsCramerShoupParameters *)params;

- (OrgBouncycastleCryptoParamsCramerShoupParameters *)getParameters;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsCramerShoupKeyParameters)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsCramerShoupKeyParameters)

#endif // _OrgBouncycastleCryptoParamsCramerShoupKeyParameters_H_