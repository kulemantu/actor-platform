//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestEditGroupTopic.java
//

#ifndef _APRequestEditGroupTopic_H_
#define _APRequestEditGroupTopic_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APGroupOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestEditGroupTopic_HEADER 211

@interface APRequestEditGroupTopic : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid
                          withNSString:(NSString *)topic;

+ (APRequestEditGroupTopic *)fromBytesWithByteArray:(IOSByteArray *)data;

- (APGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (NSString *)getTopic;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestEditGroupTopic)

J2OBJC_STATIC_FIELD_GETTER(APRequestEditGroupTopic, HEADER, jint)

FOUNDATION_EXPORT APRequestEditGroupTopic *APRequestEditGroupTopic_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestEditGroupTopic_initWithAPGroupOutPeer_withLong_withNSString_(APRequestEditGroupTopic *self, APGroupOutPeer *groupPeer, jlong rid, NSString *topic);

FOUNDATION_EXPORT APRequestEditGroupTopic *new_APRequestEditGroupTopic_initWithAPGroupOutPeer_withLong_withNSString_(APGroupOutPeer *groupPeer, jlong rid, NSString *topic) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestEditGroupTopic_init(APRequestEditGroupTopic *self);

FOUNDATION_EXPORT APRequestEditGroupTopic *new_APRequestEditGroupTopic_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestEditGroupTopic)

typedef APRequestEditGroupTopic ImActorModelApiRpcRequestEditGroupTopic;

#endif // _APRequestEditGroupTopic_H_