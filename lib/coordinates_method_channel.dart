import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'coordinates_platform_interface.dart';

/// An implementation of [CoordinatesPlatform] that uses method channels.
class MethodChannelCoordinates extends CoordinatesPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('coordinates');

  @override
  Future<String?> getCurrentLocation() async {
    final version = await methodChannel.invokeMethod<String>('getCurrentLocation');
    return version;
  }
}
