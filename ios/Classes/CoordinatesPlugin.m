#import "CoordinatesPlugin.h"
#if __has_include(<coordinates/coordinates-Swift.h>)
#import <coordinates/coordinates-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "coordinates-Swift.h"
#endif

@implementation CoordinatesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCoordinatesPlugin registerWithRegistrar:registrar];
}
@end
