//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/CCMParameters.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/params/CCMParameters.h"
#include "org/bouncycastle/crypto/params/KeyParameter.h"

@implementation OrgBouncycastleCryptoParamsCCMParameters

- (instancetype)initWithOrgBouncycastleCryptoParamsKeyParameter:(OrgBouncycastleCryptoParamsKeyParameter *)key
                                                        withInt:(jint)macSize
                                                  withByteArray:(IOSByteArray *)nonce
                                                  withByteArray:(IOSByteArray *)associatedText {
  return [super initWithOrgBouncycastleCryptoParamsKeyParameter:key withInt:macSize withByteArray:nonce withByteArray:associatedText];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsCCMParameters)