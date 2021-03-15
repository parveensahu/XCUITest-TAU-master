// Licensed under the Applitools SDK License, which can be found here: https://www.applitools.com/eula/sdk

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/***
 * Encapsulates settings for sending Eyes communication via proxy.
 */
@interface AbstractProxySettings : NSObject <NSCopying>

@property (readonly, copy, nonatomic) NSString *uri;
@property (readonly, copy, nonatomic, nullable) NSString *username;
@property (readonly, copy, nonatomic, nullable) NSString *password;
@property (readonly, assign, nonatomic) NSInteger port;

- (instancetype)initWithUri:(NSString *)uri port:(NSInteger)port username:(NSString *_Nullable)username password:(NSString *_Nullable)password;
- (instancetype)initWithUri:(NSString *)uri username:(NSString *_Nullable)username password:(NSString *_Nullable)password;
- (instancetype)initWithUri:(NSString *)uri port:(NSInteger)port;

@end

NS_ASSUME_NONNULL_END
