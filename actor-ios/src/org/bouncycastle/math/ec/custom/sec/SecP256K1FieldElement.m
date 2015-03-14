//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1Curve.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1Field.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement.h"
#include "org/bouncycastle/math/raw/Mod.h"
#include "org/bouncycastle/math/raw/Nat256.h"
#include "org/bouncycastle/util/Arrays.h"

BOOL OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_initialized = NO;

@implementation OrgBouncycastleMathEcCustomSecSecP256K1FieldElement

JavaMathBigInteger * OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_Q_;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)x {
  if (self = [super init]) {
    if (x == nil || [x signum] < 0 || [x compareToWithId:OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_Q_] >= 0) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"x value invalid for SecP256K1FieldElement"];
    }
    self->x_ = OrgBouncycastleMathEcCustomSecSecP256K1Field_fromBigIntegerWithJavaMathBigInteger_(x);
  }
  return self;
}

- (instancetype)init {
  if (self = [super init]) {
    self->x_ = OrgBouncycastleMathRawNat256_create();
  }
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)x {
  if (self = [super init]) {
    self->x_ = x;
  }
  return self;
}

- (jboolean)isZero {
  return OrgBouncycastleMathRawNat256_isZeroWithIntArray_(x_);
}

- (jboolean)isOne {
  return OrgBouncycastleMathRawNat256_isOneWithIntArray_(x_);
}

- (jboolean)testBitZero {
  return OrgBouncycastleMathRawNat256_getBitWithIntArray_withInt_(x_, 0) == 1;
}

- (JavaMathBigInteger *)toBigInteger {
  return OrgBouncycastleMathRawNat256_toBigIntegerWithIntArray_(x_);
}

- (NSString *)getFieldName {
  return @"SecP256K1Field";
}

- (jint)getFieldSize {
  return [((JavaMathBigInteger *) nil_chk(OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_Q_)) bitLength];
}

- (OrgBouncycastleMathEcECFieldElement *)addWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_addWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)addOne {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_addOneWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)subtractWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)multiplyWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)divideWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathRawMod_invertWithIntArray_withIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP256K1Field_get_P_(), ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]))))->x_, z);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(z, x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)negate {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_negateWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)square {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)invert {
  IOSIntArray *z = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathRawMod_invertWithIntArray_withIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP256K1Field_get_P_(), x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)sqrt {
  IOSIntArray *x1 = self->x_;
  if (OrgBouncycastleMathRawNat256_isZeroWithIntArray_(x1) || OrgBouncycastleMathRawNat256_isOneWithIntArray_(x1)) {
    return self;
  }
  IOSIntArray *x2 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(x1, x2);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x2, x1, x2);
  IOSIntArray *x3 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(x2, x3);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x3, x1, x3);
  IOSIntArray *x6 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x3, 3, x6);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x6, x3, x6);
  IOSIntArray *x9 = x6;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x6, 3, x9);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x9, x3, x9);
  IOSIntArray *x11 = x9;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x9, 2, x11);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x11, x2, x11);
  IOSIntArray *x22 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x11, 11, x22);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x22, x11, x22);
  IOSIntArray *x44 = x11;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x22, 22, x44);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x44, x22, x44);
  IOSIntArray *x88 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x44, 44, x88);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x88, x44, x88);
  IOSIntArray *x176 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x88, 88, x176);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x176, x88, x176);
  IOSIntArray *x220 = x88;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x176, 44, x220);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x220, x44, x220);
  IOSIntArray *x223 = x44;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(x220, 3, x223);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(x223, x3, x223);
  IOSIntArray *t1 = x223;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(t1, 23, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(t1, x22, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(t1, 6, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(t1, x2, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareNWithIntArray_withInt_withIntArray_(t1, 2, t1);
  IOSIntArray *t2 = x2;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(t1, t2);
  return OrgBouncycastleMathRawNat256_eqWithIntArray_withIntArray_(x1, t2) ? [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:t1] : nil;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!([other isKindOfClass:[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]])) {
    return NO;
  }
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *o = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(other, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  return OrgBouncycastleMathRawNat256_eqWithIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(o))->x_);
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk(OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_Q_)) hash]) ^ OrgBouncycastleUtilArrays_hashCodeWithIntArray_withInt_withInt_(x_, 0, 8);
}

- (void)copyAllFieldsTo:(OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]) {
    OrgBouncycastleMathEcCustomSecSecP256K1FieldElement_Q_ = OrgBouncycastleMathEcCustomSecSecP256K1Curve_get_q_();
    J2OBJC_SET_INITIALIZED(OrgBouncycastleMathEcCustomSecSecP256K1FieldElement)
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecP256K1FieldElement)