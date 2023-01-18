import 'package:flutter_test/flutter_test.dart';
import 'package:coordinates/coordinates.dart';
import 'package:coordinates/coordinates_platform_interface.dart';
import 'package:coordinates/coordinates_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCoordinatesPlatform
    with MockPlatformInterfaceMixin
    implements CoordinatesPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getCurrentLocation() {
    // TODO: implement getCurrentLocation
    throw UnimplementedError();
  }
}

void main() {
  final CoordinatesPlatform initialPlatform = CoordinatesPlatform.instance;

  test('$MethodChannelCoordinates is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCoordinates>());
  });

  test('getPlatformVersion', () async {
    Coordinates coordinatesPlugin = Coordinates();
    MockCoordinatesPlatform fakePlatform = MockCoordinatesPlatform();
    CoordinatesPlatform.instance = fakePlatform;

    expect(await coordinatesPlugin.getCurrentLocation(), '42');
  });
}
