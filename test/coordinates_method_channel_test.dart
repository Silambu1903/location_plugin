import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:coordinates/coordinates_method_channel.dart';

void main() {
  MethodChannelCoordinates platform = MethodChannelCoordinates();
  const MethodChannel channel = MethodChannel('coordinates');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getCurrentLocation(), '42');
  });
}
