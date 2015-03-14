//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/util/Vector.h"
#include "org/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters.h"

@interface OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters () {
 @public
  JavaMathBigInteger *phi_n_;
  JavaUtilVector *smallPrimes_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters, phi_n_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters, smallPrimes_, JavaUtilVector *)

@implementation OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)n
                                   withInt:(jint)lowerSigmaBound
                        withJavaUtilVector:(JavaUtilVector *)smallPrimes
                    withJavaMathBigInteger:(JavaMathBigInteger *)phi_n {
  if (self = [super initWithBoolean:YES withJavaMathBigInteger:g withJavaMathBigInteger:n withInt:lowerSigmaBound]) {
    self->smallPrimes_ = smallPrimes;
    self->phi_n_ = phi_n;
  }
  return self;
}

- (JavaMathBigInteger *)getPhi_n {
  return phi_n_;
}

- (JavaUtilVector *)getSmallPrimes {
  return smallPrimes_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters *)other {
  [super copyAllFieldsTo:other];
  other->phi_n_ = phi_n_;
  other->smallPrimes_ = smallPrimes_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsNaccacheSternPrivateKeyParameters)