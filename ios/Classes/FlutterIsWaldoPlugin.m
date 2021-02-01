#import "FlutterIsWaldoPlugin.h"
#if __has_include(<flutter_is_waldo/flutter_is_waldo-Swift.h>)
#import <flutter_is_waldo/flutter_is_waldo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_is_waldo-Swift.h"
#endif

@implementation FlutterIsWaldoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIsWaldoPlugin registerWithRegistrar:registrar];
}
@end
