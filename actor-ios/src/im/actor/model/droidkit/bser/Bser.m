//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/bser/Bser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "im/actor/model/util/DataInput.h"
#include "java/io/IOException.h"

@implementation ImActorModelDroidkitBserBser

+ (id)parseWithImActorModelDroidkitBserBserObject:(ImActorModelDroidkitBserBserObject *)res
                                  withAMDataInput:(AMDataInput *)inputStream {
  return ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withAMDataInput_(res, inputStream);
}

+ (id)parseWithImActorModelDroidkitBserBserObject:(ImActorModelDroidkitBserBserObject *)res
                                    withByteArray:(IOSByteArray *)data {
  return ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_(res, data);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithImActorModelDroidkitBserBserObject:withAMDataInput:", "parse", "TT;", 0x9, "Ljava.io.IOException;" },
    { "parseWithImActorModelDroidkitBserBserObject:withByteArray:", "parse", "TT;", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ImActorModelDroidkitBserBser = { 1, "Bser", "im.actor.model.droidkit.bser", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_ImActorModelDroidkitBserBser;
}

@end

id ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withAMDataInput_(ImActorModelDroidkitBserBserObject *res, AMDataInput *inputStream) {
  ImActorModelDroidkitBserBser_init();
  ImActorModelDroidkitBserBserValues *reader = [[[ImActorModelDroidkitBserBserValues alloc] initWithImActorModelDroidkitBserUtilSparseArray:ImActorModelDroidkitBserBserParser_deserializeWithAMDataInput_(inputStream)] autorelease];
  [((ImActorModelDroidkitBserBserObject *) nil_chk(res)) parseWithImActorModelDroidkitBserBserValues:reader];
  return res;
}

id ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_(ImActorModelDroidkitBserBserObject *res, IOSByteArray *data) {
  ImActorModelDroidkitBserBser_init();
  return ((ImActorModelDroidkitBserBserObject *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withAMDataInput_(res, [[[AMDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_] autorelease]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitBserBser)