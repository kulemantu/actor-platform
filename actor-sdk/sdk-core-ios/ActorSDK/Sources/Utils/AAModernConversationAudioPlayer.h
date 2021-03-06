#import <Foundation/Foundation.h>

@class AAModernConversationAudioPlayer;
@class AAModernViewInlineMediaContext;

@protocol AAModernConversationAudioPlayerDelegate <NSObject>

@optional

- (void)audioPlayerDidFinish;

@end

@interface AAModernConversationAudioPlayer : NSObject

@property (nonatomic, weak) id<AAModernConversationAudioPlayerDelegate> delegate;

- (instancetype)initWithFilePath:(NSString *)filePath;

- (AAModernViewInlineMediaContext *)inlineMediaContext;

- (void)play;
- (void)play:(float)playbackPosition;
- (void)pause;
- (void)stop;

- (float)playbackPosition;
- (float)playbackPositionSync:(bool)sync;
- (NSTimeInterval)duration;
- (bool)isPaused;

@end
