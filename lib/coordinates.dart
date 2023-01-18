
import 'coordinates_platform_interface.dart';

class Coordinates {
  Future<String?> getCurrentLocation() {
    return CoordinatesPlatform.instance.getCurrentLocation();
  }
}
