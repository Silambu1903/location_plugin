import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'coordinates_method_channel.dart';

abstract class CoordinatesPlatform extends PlatformInterface {
  /// Constructs a CoordinatesPlatform.
  CoordinatesPlatform() : super(token: _token);

  static final Object _token = Object();

  static CoordinatesPlatform _instance = MethodChannelCoordinates();

  /// The default instance of [CoordinatesPlatform] to use.
  ///
  /// Defaults to [MethodChannelCoordinates].
  static CoordinatesPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CoordinatesPlatform] when
  /// they register themselves.
  static set instance(CoordinatesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getCurrentLocation() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
