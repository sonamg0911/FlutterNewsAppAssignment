// Autogenerated from Pigeon (v14.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "pigeon.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

NSObject<FlutterMessageCodec> *IKeysGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  sSharedObject = [FlutterStandardMessageCodec sharedInstance];
  return sSharedObject;
}

void SetUpIKeys(id<FlutterBinaryMessenger> binaryMessenger, NSObject<IKeys> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.news_app.IKeys.getApiKey"
        binaryMessenger:binaryMessenger
        codec:IKeysGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getApiKeyWithError:)], @"IKeys api (%@) doesn't respond to @selector(getApiKeyWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSString *output = [api getApiKeyWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
