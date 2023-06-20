#import "CustomLibP2PPlugin.h"
#if __has_include(<custom_libp2p/custom_libp2p-Swift.h>)
#import <custom_libp2p/custom_libp2p-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_libp2p-Swift.h"
#endif

@implementation CustomLibP2PPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomLibP2PPlugin registerWithRegistrar:registrar];
}
@end
