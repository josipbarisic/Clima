import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      _latitude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double getLatitude() {
    return _latitude;
  }

  double getLongitude() {
    return _longitude;
  }
}
